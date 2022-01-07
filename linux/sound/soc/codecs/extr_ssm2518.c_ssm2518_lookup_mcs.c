
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssm2518 {unsigned int const sysclk; } ;
struct TYPE_3__ {unsigned int rate; unsigned int* sysclks; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* ssm2518_mcs_lut ;

__attribute__((used)) static int ssm2518_lookup_mcs(struct ssm2518 *ssm2518,
 unsigned int rate)
{
 const unsigned int *sysclks = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(ssm2518_mcs_lut); i++) {
  if (ssm2518_mcs_lut[i].rate == rate) {
   sysclks = ssm2518_mcs_lut[i].sysclks;
   break;
  }
 }

 if (!sysclks)
  return -EINVAL;

 for (i = 0; sysclks[i]; i++) {
  if (sysclks[i] == ssm2518->sysclk)
   return i;
 }

 return -EINVAL;
}
