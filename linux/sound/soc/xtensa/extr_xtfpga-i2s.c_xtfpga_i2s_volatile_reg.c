
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int XTFPGA_I2S_INT_STATUS ;

__attribute__((used)) static bool xtfpga_i2s_volatile_reg(struct device *dev, unsigned int reg)
{
 return reg == XTFPGA_I2S_INT_STATUS;
}
