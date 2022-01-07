
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CHANNEL_RXFIFO ;
 int CHANNEL_TXFIFO ;
 scalar_t__ REG_IN_ARRAY (unsigned int,int ) ;

__attribute__((used)) static bool tegra30_ahub_apbif_precious_reg(struct device *dev,
         unsigned int reg)
{
 if (REG_IN_ARRAY(reg, CHANNEL_TXFIFO) ||
     REG_IN_ARRAY(reg, CHANNEL_RXFIFO))
  return 1;

 return 0;
}
