
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_group {unsigned int* duration; unsigned int shift; } ;


 int MCS_GROUP_RATES ;
 struct mcs_group* minstrel_mcs_groups ;

__attribute__((used)) static inline int
minstrel_get_duration(int index)
{
 const struct mcs_group *group = &minstrel_mcs_groups[index / MCS_GROUP_RATES];
 unsigned int duration = group->duration[index % MCS_GROUP_RATES];
 return duration << group->shift;
}
