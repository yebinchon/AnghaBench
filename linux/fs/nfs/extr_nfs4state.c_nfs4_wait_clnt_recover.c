
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_cons_state; int cl_state; int cl_count; } ;


 int NFS4CLNT_MANAGER_RUNNING ;
 int TASK_KILLABLE ;
 int might_sleep () ;
 int nfs_put_client (struct nfs_client*) ;
 int nfs_wait_bit_killable ;
 int refcount_inc (int *) ;
 int wait_on_bit_action (int *,int ,int ,int ) ;

int nfs4_wait_clnt_recover(struct nfs_client *clp)
{
 int res;

 might_sleep();

 refcount_inc(&clp->cl_count);
 res = wait_on_bit_action(&clp->cl_state, NFS4CLNT_MANAGER_RUNNING,
     nfs_wait_bit_killable, TASK_KILLABLE);
 if (res)
  goto out;
 if (clp->cl_cons_state < 0)
  res = clp->cl_cons_state;
out:
 nfs_put_client(clp);
 return res;
}
