
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SUN8I_I2S_FIFO_TX_REG ;
 unsigned int SUN8I_I2S_INT_STA_REG ;
 int sun4i_i2s_volatile_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool sun8i_i2s_volatile_reg(struct device *dev, unsigned int reg)
{
 if (reg == SUN8I_I2S_INT_STA_REG)
  return 1;
 if (reg == SUN8I_I2S_FIFO_TX_REG)
  return 0;

 return sun4i_i2s_volatile_reg(dev, reg);
}
