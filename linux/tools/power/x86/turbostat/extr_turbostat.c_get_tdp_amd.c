
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double get_tdp_amd(unsigned int family)
{
 switch (family) {
 case 0x17:
 case 0x18:
 default:

  return 250.0;
 }
}
