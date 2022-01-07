
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int rpc_cred; struct nfs_fattr* rpc_resp; struct nfs_sattrargs* rpc_argp; int * rpc_proc; } ;
struct nfs_sattrargs {struct iattr* sattr; int fh; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; int ia_file; int ia_mode; } ;
struct dentry {int dummy; } ;


 int ATTR_FILE ;
 size_t NFSPROC_SETATTR ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int S_IALLUGO ;
 struct inode* d_inode (struct dentry*) ;
 int dprintk (char*,...) ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 int nfs_file_cred (int ) ;
 int * nfs_procedures ;
 int nfs_setattr_update_inode (struct inode*,struct iattr*,struct nfs_fattr*) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_setattr(struct dentry *dentry, struct nfs_fattr *fattr,
   struct iattr *sattr)
{
 struct inode *inode = d_inode(dentry);
 struct nfs_sattrargs arg = {
  .fh = NFS_FH(inode),
  .sattr = sattr
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_SETATTR],
  .rpc_argp = &arg,
  .rpc_resp = fattr,
 };
 int status;


 sattr->ia_mode &= S_IALLUGO;

 dprintk("NFS call  setattr\n");
 if (sattr->ia_valid & ATTR_FILE)
  msg.rpc_cred = nfs_file_cred(sattr->ia_file);
 nfs_fattr_init(fattr);
 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 if (status == 0)
  nfs_setattr_update_inode(inode, sattr, fattr);
 dprintk("NFS reply setattr: %d\n", status);
 return status;
}
