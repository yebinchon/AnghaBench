
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_delegation {int stateid; } ;
struct nfs_client {int dummy; } ;
struct inode {int dummy; } ;
typedef int nfs4_stateid ;
struct TYPE_5__ {int delegation; } ;
struct TYPE_4__ {struct nfs_client* nfs_client; } ;


 TYPE_3__* NFS_I (struct inode*) ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 scalar_t__ nfs4_stateid_match_other (int *,int const*) ;
 int nfs_mark_test_expired_delegation (TYPE_1__*,struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nfs_inode_find_delegation_state_and_recover(struct inode *inode,
  const nfs4_stateid *stateid)
{
 struct nfs_client *clp = NFS_SERVER(inode)->nfs_client;
 struct nfs_delegation *delegation;
 bool found = 0;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation &&
     nfs4_stateid_match_other(&delegation->stateid, stateid)) {
  nfs_mark_test_expired_delegation(NFS_SERVER(inode), delegation);
  found = 1;
 }
 rcu_read_unlock();
 if (found)
  nfs4_schedule_state_manager(clp);
}
