
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_owner_id; int cl_implid; int cl_serverscope; int cl_serverowner; int cl_rpcwaitq; int cl_res_state; TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int (* shutdown_client ) (struct nfs_client*) ;} ;


 int NFS_CS_IDMAP ;
 int NFS_CS_RENEWD ;
 scalar_t__ __test_and_clear_bit (int ,int *) ;
 int kfree (int ) ;
 int nfs4_destroy_callback (struct nfs_client*) ;
 int nfs4_kill_renewd (struct nfs_client*) ;
 int nfs_idmap_delete (struct nfs_client*) ;
 int rpc_destroy_wait_queue (int *) ;
 int stub1 (struct nfs_client*) ;

__attribute__((used)) static void nfs4_shutdown_client(struct nfs_client *clp)
{
 if (__test_and_clear_bit(NFS_CS_RENEWD, &clp->cl_res_state))
  nfs4_kill_renewd(clp);
 clp->cl_mvops->shutdown_client(clp);
 nfs4_destroy_callback(clp);
 if (__test_and_clear_bit(NFS_CS_IDMAP, &clp->cl_res_state))
  nfs_idmap_delete(clp);

 rpc_destroy_wait_queue(&clp->cl_rpcwaitq);
 kfree(clp->cl_serverowner);
 kfree(clp->cl_serverscope);
 kfree(clp->cl_implid);
 kfree(clp->cl_owner_id);
}
