
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool fsl_esai_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 136:
 case 135:
 case 128:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
