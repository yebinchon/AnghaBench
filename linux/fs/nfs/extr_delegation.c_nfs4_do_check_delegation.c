
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int delegation; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__* NFS_I (struct inode*) ;
 scalar_t__ nfs4_is_valid_delegation (struct nfs_delegation*,int) ;
 int nfs_mark_delegation_referenced (struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int
nfs4_do_check_delegation(struct inode *inode, fmode_t flags, bool mark)
{
 struct nfs_delegation *delegation;
 int ret = 0;

 flags &= FMODE_READ|FMODE_WRITE;
 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (nfs4_is_valid_delegation(delegation, flags)) {
  if (mark)
   nfs_mark_delegation_referenced(delegation);
  ret = 1;
 }
 rcu_read_unlock();
 return ret;
}
