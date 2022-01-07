
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int rpc_cred; struct nfs4_accessres* rpc_resp; struct nfs4_accessargs* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; int cache_consistency_bitmask; } ;
struct nfs_access_entry {int cred; int mask; } ;
struct nfs4_accessres {int * fattr; int access; int seq_res; struct nfs_server* server; } ;
struct nfs4_accessargs {int seq_args; int bitmask; int access; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int FMODE_READ ;
 size_t NFSPROC4_CLNT_ACCESS ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int nfs4_have_delegation (struct inode*,int ) ;
 int * nfs4_procedures ;
 int nfs_access_set_mask (struct nfs_access_entry*,int ) ;
 int * nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_refresh_inode (struct inode*,int *) ;

__attribute__((used)) static int _nfs4_proc_access(struct inode *inode, struct nfs_access_entry *entry)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct nfs4_accessargs args = {
  .fh = NFS_FH(inode),
  .access = entry->mask,
 };
 struct nfs4_accessres res = {
  .server = server,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_ACCESS],
  .rpc_argp = &args,
  .rpc_resp = &res,
  .rpc_cred = entry->cred,
 };
 int status = 0;

 if (!nfs4_have_delegation(inode, FMODE_READ)) {
  res.fattr = nfs_alloc_fattr();
  if (res.fattr == ((void*)0))
   return -ENOMEM;
  args.bitmask = server->cache_consistency_bitmask;
 }
 status = nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
 if (!status) {
  nfs_access_set_mask(entry, res.access);
  if (res.fattr)
   nfs_refresh_inode(inode, res.fattr);
 }
 nfs_free_fattr(res.fattr);
 return status;
}
