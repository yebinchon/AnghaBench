
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool tegra30_i2s_wr_rd_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 146:
 case 129:
 case 131:
 case 149:
 case 130:
 case 148:
 case 147:
 case 145:
 case 128:
 case 143:
 case 142:
 case 144:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
  return 1;
 default:
  return 0;
 }
}
