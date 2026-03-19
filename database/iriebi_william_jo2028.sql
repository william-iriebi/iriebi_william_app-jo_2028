-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 25 nov. 2025 à 13:35
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `iriebi_william_jo2028`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id_admin` int(4) NOT NULL,
  `nom_admin` varchar(255) DEFAULT NULL,
  `prenom_admin` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id_admin`, `nom_admin`, `prenom_admin`, `login`, `password`) VALUES
(1, 'Admin', 'Super', 'admin', '$2y$10$WFxymbZ/gV2XfGy1We2bB.NZ9owdEU5QKUFWAicOY7qayhbe93ACm'),
(2, 'User', 'John', 'john_doe', '$2y$10$VSdvPWt4OQnuQdT2vrP1z.5PzBJ5FuJc/bJhIFL8TB2AP99u3h8cO'),
(3, 'User', 'Jane', 'jane_doe', '$2y$10$xP/2LE33Hy./Je/CLqLyL.8KJFWgXsHXcaln/usfr8Vv6INtCKIoO');

-- --------------------------------------------------------

--
-- Structure de la table `athlete`
--

CREATE TABLE `athlete` (
  `id_athlete` int(4) NOT NULL,
  `nom_athlete` varchar(255) DEFAULT NULL,
  `prenom_athlete` varchar(255) DEFAULT NULL,
  `id_pays` int(4) NOT NULL,
  `id_genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `athlete`
--

INSERT INTO `athlete` (`id_athlete`, `nom_athlete`, `prenom_athlete`, `id_pays`, `id_genre`) VALUES
(1, 'MARTIN', 'Antoine', 1, 1),
(2, 'LARBI', 'Ahmed', 2, 1),
(3, 'BENACER', 'Fatima', 3, 2),
(4, 'BEN YOUSSEF', 'Karim', 4, 1),
(5, 'SILVA', 'Carlos', 5, 1),
(6, 'JOHNSON', 'Emily', 6, 2),
(7, 'GONZALES', 'Javier', 7, 1),
(8, 'KUMAR', 'Raj', 8, 1),
(9, 'WANG', 'Li', 9, 2),
(10, 'SMITH', 'John', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve`
--

CREATE TABLE `epreuve` (
  `id_epreuve` int(4) NOT NULL,
  `nom_epreuve` varchar(255) DEFAULT NULL,
  `date_epreuve` date DEFAULT NULL,
  `heure_epreuve` time DEFAULT NULL,
  `id_lieu` int(4) NOT NULL,
  `id_sport` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `epreuve`
--

INSERT INTO `epreuve` (`id_epreuve`, `nom_epreuve`, `date_epreuve`, `heure_epreuve`, `id_lieu`, `id_sport`) VALUES
(1, '100m', '2024-07-20', '14:30:00', 1, 1),
(2, 'Saut en hauteur', '2024-07-21', '10:00:00', 2, 2),
(3, 'Natation', '2024-07-22', '15:45:00', 3, 3),
(4, 'Course cycliste', '2024-07-23', '09:15:00', 4, 4),
(5, 'Lancer de poids', '2024-07-24', '14:45:00', 5, 5),
(6, 'Saut en longueur', '2024-07-25', '11:30:00', 1, 6),
(7, 'Gymnastique artistique', '2024-07-26', '16:15:00', 2, 7),
(8, 'VTT', '2024-07-27', '10:30:00', 3, 8),
(9, 'Boxe', '2024-07-28', '15:00:00', 4, 9),
(10, 'Escalade', '2024-07-29', '09:45:00', 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(4) NOT NULL,
  `nom_genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom_genre`) VALUES
(1, 'Homme'),
(2, 'Femme');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id_lieu` int(4) NOT NULL,
  `nom_lieu` varchar(255) DEFAULT NULL,
  `adresse_lieu` varchar(255) DEFAULT NULL,
  `cp_lieu` varchar(5) DEFAULT NULL,
  `ville_lieu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id_lieu`, `nom_lieu`, `adresse_lieu`, `cp_lieu`, `ville_lieu`) VALUES
(1, 'Stade de France', '93216 Saint-Denis, Avenue Jules Rimet', '93216', 'Saint-Denis'),
(2, 'Accor Arena', '8 Boulevard de Bercy', '75012', 'Paris'),
(3, 'Piscine Georges Vallerey', '148 Avenue Gambetta', '75020', 'Paris'),
(4, 'Vélodrome National', '1 Rue Laurent Fignon', '78180', 'Montigny-le-Bretonneux'),
(5, 'Parc des Princes', '24 Rue du Commandant Guilbaud', '75016', 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE `participer` (
  `id_athlete` int(4) NOT NULL,
  `id_epreuve` int(4) NOT NULL,
  `resultat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `participer`
--

INSERT INTO `participer` (`id_athlete`, `id_epreuve`, `resultat`) VALUES
(1, 1, '10.5'),
(2, 1, '11.2'),
(3, 2, '1.85'),
(4, 3, '2:05.3'),
(5, 5, '14.3'),
(6, 6, '7.2'),
(7, 7, '15.5'),
(8, 8, '1:30:45'),
(9, 9, 'Vainqueur'),
(10, 10, '5.8');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id_pays` int(4) NOT NULL,
  `nom_pays` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id_pays`, `nom_pays`) VALUES
(1, 'France'),
(2, 'Algérie'),
(3, 'Maroc'),
(4, 'Tunisie'),
(5, 'Brésil'),
(6, 'Australie'),
(7, 'Canada'),
(8, 'Inde'),
(9, 'Chine'),
(10, 'États-Unis');

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

CREATE TABLE `sport` (
  `id_sport` int(4) NOT NULL,
  `nom_sport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sport`
--

INSERT INTO `sport` (`id_sport`, `nom_sport`) VALUES
(1, 'Athlétisme'),
(2, 'Saut en hauteur'),
(3, 'Natation'),
(4, 'Cyclisme'),
(5, 'Lancer'),
(6, 'Saut en longueur'),
(7, 'Gymnastique'),
(8, 'VTT'),
(9, 'Boxe'),
(10, 'Escalade');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `athlete`
--
ALTER TABLE `athlete`
  ADD PRIMARY KEY (`id_athlete`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_pays` (`id_pays`);

--
-- Index pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD PRIMARY KEY (`id_epreuve`),
  ADD KEY `id_sport` (`id_sport`),
  ADD KEY `id_lieu` (`id_lieu`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id_lieu`);

--
-- Index pour la table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id_athlete`,`id_epreuve`),
  ADD KEY `id_epreuve` (`id_epreuve`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id_sport`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `athlete`
--
ALTER TABLE `athlete`
  MODIFY `id_athlete` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `epreuve`
--
ALTER TABLE `epreuve`
  MODIFY `id_epreuve` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id_lieu` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id_pays` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `sport`
--
ALTER TABLE `sport`
  MODIFY `id_sport` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `athlete`
--
ALTER TABLE `athlete`
  ADD CONSTRAINT `athlete_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `athlete_ibfk_2` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id_pays`);

--
-- Contraintes pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD CONSTRAINT `epreuve_ibfk_1` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id_sport`),
  ADD CONSTRAINT `epreuve_ibfk_2` FOREIGN KEY (`id_lieu`) REFERENCES `lieu` (`id_lieu`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`id_epreuve`) REFERENCES `epreuve` (`id_epreuve`),
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`id_athlete`) REFERENCES `athlete` (`id_athlete`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
