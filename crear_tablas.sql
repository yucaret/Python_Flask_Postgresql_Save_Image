CREATE TABLE persona
(
    idpersona SERIAL,
    nombres varchar(20),
    apellidopaterno varchar(20),
    apellidomaterno varchar(20),
    dni varchar(8),
    celular varchar(9),
    correo varchar(30)
);

insert persona (idpersona, nombres, apellidopaterno, apellidomaterno, dni, celular, correo) values
(DEFAULT, 'jorge eduardo', 'vicente', 'hernandez', '44444444', '999999999', 'jorge.eduardo@vicenteh.com');

commit;

CREATE TABLE suministro
(
    idsuministro SERIAL,
    cuenta varchar(20),
    distrito varchar(20),
    direccion varchar(20)
);

insert suministro (idsuministro, cuenta, distrito, direccion) values
(DEFAULT, '10274365', 'lunahuana', 'anexo jita, km 38');

commit;

CREATE TABLE autolectura
(
    idautolectura SERIAL,
    idpersona integer,
    idsuministro integer,
    fechacargafoto varchar(8),
    horacargafoto varchar(6),
    fotocargada bytea,
    fechaobtencionlectura varchar(8),
    horaobtencionlectura varchar(6),
    lecturaobtencion varchar(20),
    estadoactivo integer
);

commit;
