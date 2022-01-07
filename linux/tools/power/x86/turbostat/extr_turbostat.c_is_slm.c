
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genuine_intel ;

int is_slm(unsigned int family, unsigned int model)
{
 if (!genuine_intel)
  return 0;
 switch (model) {
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
