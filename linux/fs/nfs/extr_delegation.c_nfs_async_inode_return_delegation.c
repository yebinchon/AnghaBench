
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_delegation {int stateid; } ;
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct inode {int dummy; } ;
typedef int nfs4_stateid ;
struct TYPE_4__ {int delegation; } ;
struct TYPE_3__ {int (* match_stateid ) (int *,int const*) ;} ;


 int ENOENT ;
 TYPE_2__* NFS_I (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs_delegation_run_state_manager (struct nfs_client*) ;
 int nfs_mark_return_delegation (struct nfs_server*,struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int *,int const*) ;

int nfs_async_inode_return_delegation(struct inode *inode,
          const nfs4_stateid *stateid)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct nfs_client *clp = server->nfs_client;
 struct nfs_delegation *delegation;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation == ((void*)0))
  goto out_enoent;
 if (stateid != ((void*)0) &&
     !clp->cl_mvops->match_stateid(&delegation->stateid, stateid))
  goto out_enoent;
 nfs_mark_return_delegation(server, delegation);
 rcu_read_unlock();

 nfs_delegation_run_state_manager(clp);
 return 0;
out_enoent:
 rcu_read_unlock();
 return -ENOENT;
}
