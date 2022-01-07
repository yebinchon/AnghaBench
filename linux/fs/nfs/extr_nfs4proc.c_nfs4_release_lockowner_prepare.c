
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_server {TYPE_4__* nfs_client; } ;
struct TYPE_7__ {int clientid; } ;
struct TYPE_5__ {TYPE_3__ lock_owner; int seq_args; } ;
struct TYPE_6__ {int seq_res; } ;
struct nfs_release_lockowner_data {int timestamp; TYPE_1__ args; TYPE_2__ res; struct nfs_server* server; } ;
struct TYPE_8__ {int cl_clientid; } ;


 int jiffies ;
 int nfs4_setup_sequence (TYPE_4__*,int *,int *,struct rpc_task*) ;

__attribute__((used)) static void nfs4_release_lockowner_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_release_lockowner_data *data = calldata;
 struct nfs_server *server = data->server;
 nfs4_setup_sequence(server->nfs_client, &data->args.seq_args,
      &data->res.seq_res, task);
 data->args.lock_owner.clientid = server->nfs_client->cl_clientid;
 data->timestamp = jiffies;
}
