
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int flags; } ;


 int NFS_DELEGATION_REFERENCED ;
 int set_bit (int ,int *) ;

void nfs_mark_delegation_referenced(struct nfs_delegation *delegation)
{
 set_bit(NFS_DELEGATION_REFERENCED, &delegation->flags);
}
