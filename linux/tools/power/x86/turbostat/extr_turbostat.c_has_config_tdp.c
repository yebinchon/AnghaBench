
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genuine_intel ;

int has_config_tdp(unsigned int family, unsigned int model)
{
 if (!genuine_intel)
  return 0;

 if (family != 6)
  return 0;

 switch (model) {
 case 131:
 case 135:
 case 132:
 case 133:
 case 134:
 case 139:
 case 138:
 case 137:
 case 130:
 case 136:
 case 129:

 case 128:
  return 1;
 default:
  return 0;
 }
}
