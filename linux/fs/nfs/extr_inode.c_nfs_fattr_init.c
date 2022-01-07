
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int * group_name; int * owner_name; int gencount; int time_start; scalar_t__ valid; } ;


 int jiffies ;
 int nfs_inc_attr_generation_counter () ;

void nfs_fattr_init(struct nfs_fattr *fattr)
{
 fattr->valid = 0;
 fattr->time_start = jiffies;
 fattr->gencount = nfs_inc_attr_generation_counter();
 fattr->owner_name = ((void*)0);
 fattr->group_name = ((void*)0);
}
