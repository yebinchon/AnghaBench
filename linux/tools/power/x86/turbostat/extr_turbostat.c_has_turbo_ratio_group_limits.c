
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genuine_intel ;

int has_turbo_ratio_group_limits(int family, int model)
{

 if (!genuine_intel)
  return 0;

 switch (model) {
 case 130:
 case 128:
 case 129:
  return 1;
 }
 return 0;
}
