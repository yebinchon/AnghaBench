
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




__attribute__((used)) static bool max98371_readable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 128:
  return 0;
 default:
  return 1;
 }
}
