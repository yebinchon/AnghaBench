
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



 int regmap_ac97_default_volatile (struct device*,unsigned int) ;

__attribute__((used)) static bool wm9712_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 128:
  return 1;
 default:
  return regmap_ac97_default_volatile(dev, reg);
 }
}
