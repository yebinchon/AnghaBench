
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {int nfs_client; } ;
struct TYPE_4__ {int seq_res; struct nfs_server* server; } ;
struct TYPE_3__ {int seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int * commit_done_cb; int inode; } ;


 size_t NFSPROC4_CLNT_COMMIT ;
 struct nfs_server* NFS_SERVER (int ) ;
 int NFS_SP4_MACH_CRED_COMMIT ;
 int * nfs4_commit_done_cb ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int * nfs4_procedures ;
 int nfs4_state_protect (int ,int ,struct rpc_clnt**,struct rpc_message*) ;

__attribute__((used)) static void nfs4_proc_commit_setup(struct nfs_commit_data *data, struct rpc_message *msg,
       struct rpc_clnt **clnt)
{
 struct nfs_server *server = NFS_SERVER(data->inode);

 if (data->commit_done_cb == ((void*)0))
  data->commit_done_cb = nfs4_commit_done_cb;
 data->res.server = server;
 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COMMIT];
 nfs4_init_sequence(&data->args.seq_args, &data->res.seq_res, 1, 0);
 nfs4_state_protect(server->nfs_client, NFS_SP4_MACH_CRED_COMMIT, clnt, msg);
}
