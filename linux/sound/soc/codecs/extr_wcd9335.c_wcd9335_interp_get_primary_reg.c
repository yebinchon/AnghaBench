
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static u16 wcd9335_interp_get_primary_reg(u16 reg, u16 *ind)
{
 u16 prim_int_reg = 145;

 switch (reg) {
 case 145:
 case 144:
  prim_int_reg = 145;
  *ind = 0;
  break;
 case 143:
 case 142:
  prim_int_reg = 143;
  *ind = 1;
  break;
 case 141:
 case 140:
  prim_int_reg = 141;
  *ind = 2;
  break;
 case 139:
 case 138:
  prim_int_reg = 139;
  *ind = 3;
  break;
 case 137:
 case 136:
  prim_int_reg = 137;
  *ind = 4;
  break;
 case 135:
 case 134:
  prim_int_reg = 135;
  *ind = 5;
  break;
 case 133:
 case 132:
  prim_int_reg = 133;
  *ind = 6;
  break;
 case 131:
 case 130:
  prim_int_reg = 131;
  *ind = 7;
  break;
 case 129:
 case 128:
  prim_int_reg = 129;
  *ind = 8;
  break;
 };

 return prim_int_reg;
}
