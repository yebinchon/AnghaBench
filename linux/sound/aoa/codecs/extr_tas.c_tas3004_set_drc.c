
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas {int drc_range; scalar_t__ drc_enabled; } ;


 int TAS_REG_DRC ;
 int tas_write_reg (struct tas*,int ,int,unsigned char*) ;

__attribute__((used)) static void tas3004_set_drc(struct tas *tas)
{
 unsigned char val[6];

 if (tas->drc_enabled)
  val[0] = 0x50;
 else
  val[0] = 0x51;
 val[1] = 0x02;
 if (tas->drc_range > 0xef)
  val[2] = 0xef;
 else if (tas->drc_range < 0)
  val[2] = 0x00;
 else
  val[2] = tas->drc_range;
 val[3] = 0xb0;
 val[4] = 0x60;
 val[5] = 0xa0;

 tas_write_reg(tas, TAS_REG_DRC, 6, val);
}
