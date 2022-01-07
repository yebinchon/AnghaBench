
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_statfs_res* rpc_resp; struct nfs4_statfs_arg* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; int attr_bitmask; } ;
struct nfs_fsstat {int fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_statfs_res {int seq_res; struct nfs_fsstat* fsstat; } ;
struct nfs4_statfs_arg {int seq_args; int bitmask; struct nfs_fh* fh; } ;


 size_t NFSPROC4_CLNT_STATFS ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int ) ;

__attribute__((used)) static int _nfs4_proc_statfs(struct nfs_server *server, struct nfs_fh *fhandle,
   struct nfs_fsstat *fsstat)
{
 struct nfs4_statfs_arg args = {
  .fh = fhandle,
  .bitmask = server->attr_bitmask,
 };
 struct nfs4_statfs_res res = {
  .fsstat = fsstat,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_STATFS],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 nfs_fattr_init(fsstat->fattr);
 return nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
}
