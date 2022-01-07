
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {int nfs_client; int * cache_consistency_bitmask; } ;
struct TYPE_4__ {int seq_res; struct nfs_server* server; int * fattr; } ;
struct TYPE_3__ {int seq_args; int * bitmask; } ;
struct nfs_pgio_header {TYPE_2__ res; TYPE_1__ args; int timestamp; scalar_t__ pgio_done_cb; int inode; } ;


 size_t NFSPROC4_CLNT_WRITE ;
 struct nfs_server* NFS_SERVER (int ) ;
 int jiffies ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int * nfs4_procedures ;
 int nfs4_state_protect_write (int ,struct rpc_clnt**,struct rpc_message*,struct nfs_pgio_header*) ;
 scalar_t__ nfs4_write_done_cb ;
 int nfs4_write_need_cache_consistency_data (struct nfs_pgio_header*) ;

__attribute__((used)) static void nfs4_proc_write_setup(struct nfs_pgio_header *hdr,
      struct rpc_message *msg,
      struct rpc_clnt **clnt)
{
 struct nfs_server *server = NFS_SERVER(hdr->inode);

 if (!nfs4_write_need_cache_consistency_data(hdr)) {
  hdr->args.bitmask = ((void*)0);
  hdr->res.fattr = ((void*)0);
 } else
  hdr->args.bitmask = server->cache_consistency_bitmask;

 if (!hdr->pgio_done_cb)
  hdr->pgio_done_cb = nfs4_write_done_cb;
 hdr->res.server = server;
 hdr->timestamp = jiffies;

 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_WRITE];
 nfs4_init_sequence(&hdr->args.seq_args, &hdr->res.seq_res, 1, 0);
 nfs4_state_protect_write(server->nfs_client, clnt, msg, hdr);
}
