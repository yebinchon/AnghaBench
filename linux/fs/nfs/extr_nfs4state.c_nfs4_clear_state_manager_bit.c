
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_rpcwaitq; int cl_state; } ;


 int NFS4CLNT_MANAGER_RUNNING ;
 int clear_bit (int ,int *) ;
 int rpc_wake_up (int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void nfs4_clear_state_manager_bit(struct nfs_client *clp)
{
 smp_mb__before_atomic();
 clear_bit(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state);
 smp_mb__after_atomic();
 wake_up_bit(&clp->cl_state, NFS4CLNT_MANAGER_RUNNING);
 rpc_wake_up(&clp->cl_rpcwaitq);
}
