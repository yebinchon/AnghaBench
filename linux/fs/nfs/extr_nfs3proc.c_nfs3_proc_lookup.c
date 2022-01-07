
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs_fh* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_fh {int name; int len; int fh; } ;
struct nfs_fattr {int valid; int * dir_attr; struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs4_label {int dummy; } ;
struct nfs3_diropres {int valid; int * dir_attr; struct nfs3_diropres* fattr; struct nfs_fh* fh; } ;
struct nfs3_diropargs {int name; int len; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_GETATTR ;
 size_t NFS3PROC_LOOKUP ;
 int NFS_ATTR_FATTR ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int * nfs3_procedures ;
 int * nfs_alloc_fattr () ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 int nfs_free_fattr (int *) ;
 int nfs_refresh_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_lookup(struct inode *dir, const struct qstr *name,
   struct nfs_fh *fhandle, struct nfs_fattr *fattr,
   struct nfs4_label *label)
{
 struct nfs3_diropargs arg = {
  .fh = NFS_FH(dir),
  .name = name->name,
  .len = name->len
 };
 struct nfs3_diropres res = {
  .fh = fhandle,
  .fattr = fattr
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_LOOKUP],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status;

 dprintk("NFS call  lookup %s\n", name->name);
 res.dir_attr = nfs_alloc_fattr();
 if (res.dir_attr == ((void*)0))
  return -ENOMEM;

 nfs_fattr_init(fattr);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_refresh_inode(dir, res.dir_attr);
 if (status >= 0 && !(fattr->valid & NFS_ATTR_FATTR)) {
  msg.rpc_proc = &nfs3_procedures[NFS3PROC_GETATTR];
  msg.rpc_argp = fhandle;
  msg.rpc_resp = fattr;
  status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 }
 nfs_free_fattr(res.dir_attr);
 dprintk("NFS reply lookup: %d\n", status);
 return status;
}
