
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int delegation; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int nfs_mark_test_expired_delegation (struct nfs_server*,struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void nfs_inode_mark_test_expired_delegation(struct nfs_server *server,
  struct inode *inode)
{
 struct nfs_delegation *delegation;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation)
  nfs_mark_test_expired_delegation(server, delegation);
 rcu_read_unlock();

}
