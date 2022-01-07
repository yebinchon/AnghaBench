
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas {int bass; } ;


 int TAS_REG_BASS ;
 int tas3004_bass (int ) ;
 int tas_write_reg (struct tas*,int ,int,int *) ;

__attribute__((used)) static void tas_set_bass(struct tas *tas)
{
 u8 tmp;

 tmp = tas3004_bass(tas->bass);
 tas_write_reg(tas, TAS_REG_BASS, 1, &tmp);
}
