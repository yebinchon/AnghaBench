
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool cs53l30_writeable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  return 0;
 default:
  return 1;
 }
}
