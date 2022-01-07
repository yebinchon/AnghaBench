
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int nrequests; int delegation; } ;
struct nfs_delegation {int type; scalar_t__ pagemod_limit; } ;
struct inode {int dummy; } ;


 int FMODE_WRITE ;
 struct nfs_inode* NFS_I (struct inode const*) ;
 scalar_t__ atomic_long_read (int *) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool nfs4_delegation_flush_on_close(const struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_delegation *delegation;
 bool ret = 1;

 rcu_read_lock();
 delegation = rcu_dereference(nfsi->delegation);
 if (delegation == ((void*)0) || !(delegation->type & FMODE_WRITE))
  goto out;
 if (atomic_long_read(&nfsi->nrequests) < delegation->pagemod_limit)
  ret = 0;
out:
 rcu_read_unlock();
 return ret;
}
