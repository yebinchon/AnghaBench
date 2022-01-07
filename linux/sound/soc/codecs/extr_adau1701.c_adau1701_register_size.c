
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int dev_err (struct device*,char*,unsigned int) ;

__attribute__((used)) static unsigned int adau1701_register_size(struct device *dev,
  unsigned int reg)
{
 switch (reg) {
 case 131:
 case 130:
  return 3;
 case 133:
 case 128:
 case 135:
 case 132:
 case 134:
  return 2;
 case 129:
  return 1;
 }

 dev_err(dev, "Unsupported register address: %d\n", reg);
 return 0;
}
