
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_lookupp_res* rpc_resp; struct nfs4_lookupp_arg* rpc_argp; int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {int attr_bitmask; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_lookupp_res {int seq_res; struct nfs_fh* fh; struct nfs4_label* label; struct nfs_fattr* fattr; struct nfs_server* server; } ;
struct nfs4_lookupp_arg {int seq_args; int bitmask; int fh; } ;
struct nfs4_label {int dummy; } ;
struct inode {int i_ino; } ;


 size_t NFSPROC4_CLNT_LOOKUPP ;
 struct rpc_clnt* NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs4_bitmask (struct nfs_server*,struct nfs4_label*) ;
 int nfs4_call_sync (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (struct nfs_fattr*) ;

__attribute__((used)) static int _nfs4_proc_lookupp(struct inode *inode,
  struct nfs_fh *fhandle, struct nfs_fattr *fattr,
  struct nfs4_label *label)
{
 struct rpc_clnt *clnt = NFS_CLIENT(inode);
 struct nfs_server *server = NFS_SERVER(inode);
 int status;
 struct nfs4_lookupp_arg args = {
  .bitmask = server->attr_bitmask,
  .fh = NFS_FH(inode),
 };
 struct nfs4_lookupp_res res = {
  .server = server,
  .fattr = fattr,
  .label = label,
  .fh = fhandle,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUPP],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 args.bitmask = nfs4_bitmask(server, label);

 nfs_fattr_init(fattr);

 dprintk("NFS call  lookupp ino=0x%lx\n", inode->i_ino);
 status = nfs4_call_sync(clnt, server, &msg, &args.seq_args,
    &res.seq_res, 0);
 dprintk("NFS reply lookupp: %d\n", status);
 return status;
}
