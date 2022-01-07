
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int AUDIO_RX ;
 scalar_t__ REG_IN_ARRAY (unsigned int,int ) ;

__attribute__((used)) static bool tegra30_ahub_ahub_wr_rd_reg(struct device *dev, unsigned int reg)
{
 if (REG_IN_ARRAY(reg, AUDIO_RX))
  return 1;

 return 0;
}
