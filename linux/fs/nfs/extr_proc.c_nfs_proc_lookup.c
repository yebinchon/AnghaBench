
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_diropok* rpc_resp; struct nfs_diropargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs_diropok {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_diropargs {int name; int len; int fh; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_LOOKUP ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_lookup(struct inode *dir, const struct qstr *name,
  struct nfs_fh *fhandle, struct nfs_fattr *fattr,
  struct nfs4_label *label)
{
 struct nfs_diropargs arg = {
  .fh = NFS_FH(dir),
  .name = name->name,
  .len = name->len
 };
 struct nfs_diropok res = {
  .fh = fhandle,
  .fattr = fattr
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_LOOKUP],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status;

 dprintk("NFS call  lookup %s\n", name->name);
 nfs_fattr_init(fattr);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 dprintk("NFS reply lookup: %d\n", status);
 return status;
}
