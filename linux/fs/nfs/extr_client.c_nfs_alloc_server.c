
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int uoc_rpcwaitq; int lockowner_id; int openowner_id; int io_stats; int active; int ss_copies; int state_owners_lru; int layouts; int delegations; int master_link; int client_link; int client_acl; int client; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int ida_init (int *) ;
 int kfree (struct nfs_server*) ;
 struct nfs_server* kzalloc (int,int ) ;
 int nfs_alloc_iostats () ;
 int pnfs_init_server (struct nfs_server*) ;
 int rpc_init_wait_queue (int *,char*) ;

struct nfs_server *nfs_alloc_server(void)
{
 struct nfs_server *server;

 server = kzalloc(sizeof(struct nfs_server), GFP_KERNEL);
 if (!server)
  return ((void*)0);

 server->client = server->client_acl = ERR_PTR(-EINVAL);


 INIT_LIST_HEAD(&server->client_link);
 INIT_LIST_HEAD(&server->master_link);
 INIT_LIST_HEAD(&server->delegations);
 INIT_LIST_HEAD(&server->layouts);
 INIT_LIST_HEAD(&server->state_owners_lru);
 INIT_LIST_HEAD(&server->ss_copies);

 atomic_set(&server->active, 0);

 server->io_stats = nfs_alloc_iostats();
 if (!server->io_stats) {
  kfree(server);
  return ((void*)0);
 }

 ida_init(&server->openowner_id);
 ida_init(&server->lockowner_id);
 pnfs_init_server(server);
 rpc_init_wait_queue(&server->uoc_rpcwaitq, "NFS UOC");

 return server;
}
