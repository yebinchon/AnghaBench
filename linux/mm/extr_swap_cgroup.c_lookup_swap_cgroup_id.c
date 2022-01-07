
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct TYPE_2__ {unsigned short id; } ;


 TYPE_1__* lookup_swap_cgroup (int ,int *) ;

unsigned short lookup_swap_cgroup_id(swp_entry_t ent)
{
 return lookup_swap_cgroup(ent, ((void*)0))->id;
}
