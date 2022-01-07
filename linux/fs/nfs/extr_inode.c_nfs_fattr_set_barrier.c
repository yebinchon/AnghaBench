
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int gencount; } ;


 int nfs_inc_attr_generation_counter () ;

void nfs_fattr_set_barrier(struct nfs_fattr *fattr)
{
 fattr->gencount = nfs_inc_attr_generation_counter();
}
