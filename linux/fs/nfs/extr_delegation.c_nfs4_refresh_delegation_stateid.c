
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int seqid; } ;
struct nfs_delegation {TYPE_3__ stateid; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int seqid; } ;
typedef TYPE_1__ nfs4_stateid ;
struct TYPE_8__ {int delegation; } ;


 TYPE_5__* NFS_I (struct inode*) ;
 scalar_t__ nfs4_stateid_match_other (TYPE_1__*,TYPE_3__*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool nfs4_refresh_delegation_stateid(nfs4_stateid *dst, struct inode *inode)
{
 struct nfs_delegation *delegation;
 bool ret = 0;
 if (!inode)
  goto out;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation != ((void*)0) &&
     nfs4_stateid_match_other(dst, &delegation->stateid)) {
  dst->seqid = delegation->stateid.seqid;
  ret = 1;
 }
 rcu_read_unlock();
out:
 return ret;
}
