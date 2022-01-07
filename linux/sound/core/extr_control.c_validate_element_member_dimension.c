
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* d; } ;
struct snd_ctl_elem_info {unsigned int count; TYPE_1__ dimen; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;

__attribute__((used)) static bool validate_element_member_dimension(struct snd_ctl_elem_info *info)
{
 unsigned int members;
 unsigned int i;

 if (info->dimen.d[0] == 0)
  return 1;

 members = 1;
 for (i = 0; i < ARRAY_SIZE(info->dimen.d); ++i) {
  if (info->dimen.d[i] == 0)
   break;
  members *= info->dimen.d[i];





  if (members > info->count)
   return 0;
 }

 for (++i; i < ARRAY_SIZE(info->dimen.d); ++i) {
  if (info->dimen.d[i] > 0)
   return 0;
 }

 return members == info->count;
}
