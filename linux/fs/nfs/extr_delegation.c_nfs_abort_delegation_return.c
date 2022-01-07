
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int lock; int flags; } ;
struct nfs_client {int cl_state; } ;


 int NFS4CLNT_DELEGRETURN ;
 int NFS_DELEGATION_RETURN ;
 int NFS_DELEGATION_RETURNING ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs_abort_delegation_return(struct nfs_delegation *delegation,
  struct nfs_client *clp)
{

 spin_lock(&delegation->lock);
 clear_bit(NFS_DELEGATION_RETURNING, &delegation->flags);
 set_bit(NFS_DELEGATION_RETURN, &delegation->flags);
 spin_unlock(&delegation->lock);
 set_bit(NFS4CLNT_DELEGRETURN, &clp->cl_state);
}
