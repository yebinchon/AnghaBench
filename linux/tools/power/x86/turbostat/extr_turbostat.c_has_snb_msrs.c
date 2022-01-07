
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genuine_intel ;

int has_snb_msrs(unsigned int family, unsigned int model)
{
 if (!genuine_intel)
  return 0;

 switch (model) {
 case 131:
 case 130:
 case 133:
 case 132:
 case 137:
 case 134:
 case 135:
 case 136:
 case 141:
 case 140:
 case 139:
 case 129:
 case 138:
 case 128:
 case 144:
 case 142:
 case 143:
  return 1;
 }
 return 0;
}
