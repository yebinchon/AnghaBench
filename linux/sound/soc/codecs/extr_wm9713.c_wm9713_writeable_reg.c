
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




 int wm9713_readable_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool wm9713_writeable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 129:
 case 128:
  return 0;
 default:
  return wm9713_readable_reg(dev, reg);
 }
}
