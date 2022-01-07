
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int delegation; } ;


 TYPE_1__* NFS_I (struct inode const*) ;
 scalar_t__ nfs4_is_valid_delegation (struct nfs_delegation*,int ) ;
 struct nfs_delegation* rcu_dereference (int ) ;

struct nfs_delegation *nfs4_get_valid_delegation(const struct inode *inode)
{
 struct nfs_delegation *delegation;

 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (nfs4_is_valid_delegation(delegation, 0))
  return delegation;
 return ((void*)0);
}
