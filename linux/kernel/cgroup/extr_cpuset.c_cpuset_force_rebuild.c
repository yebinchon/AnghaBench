
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int force_rebuild ;

void cpuset_force_rebuild(void)
{
 force_rebuild = 1;
}
