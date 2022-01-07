
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpc_message {struct nfs4_lookup_res* rpc_resp; struct nfs4_lookup_root_arg* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_fsinfo {int fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_lookup_root_arg {int* bitmask; int seq_args; } ;
struct nfs4_lookup_res {int seq_res; struct nfs_fh* fh; int fattr; struct nfs_server* server; } ;


 int FATTR4_WORD2_SECURITY_LABEL ;
 size_t NFSPROC4_CLNT_LOOKUP_ROOT ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int* nfs4_fattr_bitmap ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int ) ;

__attribute__((used)) static int _nfs4_lookup_root(struct nfs_server *server, struct nfs_fh *fhandle,
  struct nfs_fsinfo *info)
{
 u32 bitmask[3];
 struct nfs4_lookup_root_arg args = {
  .bitmask = bitmask,
 };
 struct nfs4_lookup_res res = {
  .server = server,
  .fattr = info->fattr,
  .fh = fhandle,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUP_ROOT],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 bitmask[0] = nfs4_fattr_bitmap[0];
 bitmask[1] = nfs4_fattr_bitmap[1];



 bitmask[2] = nfs4_fattr_bitmap[2] & ~FATTR4_WORD2_SECURITY_LABEL;

 nfs_fattr_init(info->fattr);
 return nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
}
