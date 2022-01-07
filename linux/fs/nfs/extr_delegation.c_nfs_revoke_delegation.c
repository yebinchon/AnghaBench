
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int stateid; } ;
struct inode {int dummy; } ;
typedef int nfs4_stateid ;
struct TYPE_2__ {int delegation; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs4_stateid_match (int const*,int *) ;
 int nfs_inode_find_state_and_recover (struct inode*,int const*) ;
 int nfs_mark_delegation_revoked (int ,struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool nfs_revoke_delegation(struct inode *inode,
  const nfs4_stateid *stateid)
{
 struct nfs_delegation *delegation;
 nfs4_stateid tmp;
 bool ret = 0;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation == ((void*)0))
  goto out;
 if (stateid == ((void*)0)) {
  nfs4_stateid_copy(&tmp, &delegation->stateid);
  stateid = &tmp;
 } else if (!nfs4_stateid_match(stateid, &delegation->stateid))
  goto out;
 nfs_mark_delegation_revoked(NFS_SERVER(inode), delegation);
 ret = 1;
out:
 rcu_read_unlock();
 if (ret)
  nfs_inode_find_state_and_recover(inode, stateid);
 return ret;
}
