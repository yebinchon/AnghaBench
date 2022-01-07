
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CHANNEL_CLEAR ;
 int CHANNEL_RXFIFO ;
 int CHANNEL_STATUS ;
 int CHANNEL_TXFIFO ;
 int DAM_LIVE_STATUS ;
 scalar_t__ REG_IN_ARRAY (unsigned int,int ) ;
__attribute__((used)) static bool tegra30_ahub_apbif_volatile_reg(struct device *dev,
         unsigned int reg)
{
 switch (reg) {
 case 137:
 case 131:
 case 140:
 case 132:
 case 128:
 case 133:
 case 135:
 case 129:
 case 138:
 case 134:
 case 136:
 case 130:
 case 139:
  return 1;
 default:
  break;
 }

 if (REG_IN_ARRAY(reg, CHANNEL_CLEAR) ||
     REG_IN_ARRAY(reg, CHANNEL_STATUS) ||
     REG_IN_ARRAY(reg, CHANNEL_TXFIFO) ||
     REG_IN_ARRAY(reg, CHANNEL_RXFIFO) ||
     REG_IN_ARRAY(reg, DAM_LIVE_STATUS))
  return 1;

 return 0;
}
