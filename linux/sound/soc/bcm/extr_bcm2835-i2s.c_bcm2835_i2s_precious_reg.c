
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




__attribute__((used)) static bool bcm2835_i2s_precious_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 128:
  return 1;
 default:
  return 0;
 };
}
