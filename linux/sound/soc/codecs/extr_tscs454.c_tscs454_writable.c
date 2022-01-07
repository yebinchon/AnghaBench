
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool tscs454_writable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 132:
 case 131:
 case 133:

 case 135:
 case 134:
 case 136:

 case 129:
 case 128:
 case 130:
  return 0;
 default:
  return 1;
 };
}
