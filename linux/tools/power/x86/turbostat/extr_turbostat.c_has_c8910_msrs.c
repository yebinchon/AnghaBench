
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genuine_intel ;

int has_c8910_msrs(unsigned int family, unsigned int model)
{
 if (!genuine_intel)
  return 0;

 switch (model) {
 case 129:
 case 131:
 case 128:
 case 130:
 case 133:
 case 132:
  return 1;
 }
 return 0;
}
