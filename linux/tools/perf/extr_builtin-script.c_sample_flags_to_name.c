
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {char const* name; scalar_t__ flags; } ;


 TYPE_1__* sample_flags ;

__attribute__((used)) static const char *sample_flags_to_name(u32 flags)
{
 int i;

 for (i = 0; sample_flags[i].name ; i++) {
  if (sample_flags[i].flags == flags)
   return sample_flags[i].name;
 }

 return ((void*)0);
}
