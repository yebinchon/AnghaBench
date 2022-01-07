
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {struct cred* cred; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_file; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int ATTR_CTIME ;
 int ATTR_FILE ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_OPEN ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 int NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct nfs4_label*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int nfs4_do_setattr (struct inode*,struct cred const*,struct nfs_fattr*,struct iattr*,struct nfs_open_context*,int *,struct nfs4_label*) ;
 int nfs4_inode_make_writeable (struct inode*) ;
 struct nfs4_label* nfs4_label_alloc (int ,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 struct nfs_open_context* nfs_file_open_context (int ) ;
 int nfs_setattr_update_inode (struct inode*,struct iattr*,struct nfs_fattr*) ;
 int nfs_setsecurity (struct inode*,struct nfs_fattr*,struct nfs4_label*) ;
 int pnfs_commit_and_return_layout (struct inode*) ;
 scalar_t__ pnfs_ld_layoutret_on_setattr (struct inode*) ;

__attribute__((used)) static int
nfs4_proc_setattr(struct dentry *dentry, struct nfs_fattr *fattr,
    struct iattr *sattr)
{
 struct inode *inode = d_inode(dentry);
 const struct cred *cred = ((void*)0);
 struct nfs_open_context *ctx = ((void*)0);
 struct nfs4_label *label = ((void*)0);
 int status;

 if (pnfs_ld_layoutret_on_setattr(inode) &&
     sattr->ia_valid & ATTR_SIZE &&
     sattr->ia_size < i_size_read(inode))
  pnfs_commit_and_return_layout(inode);

 nfs_fattr_init(fattr);


 if (sattr->ia_valid & ATTR_OPEN)
  sattr->ia_valid &= ~(ATTR_MTIME|ATTR_CTIME);


 if ((sattr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
  return 0;


 if (sattr->ia_valid & ATTR_FILE) {

  ctx = nfs_file_open_context(sattr->ia_file);
  if (ctx)
   cred = ctx->cred;
 }

 label = nfs4_label_alloc(NFS_SERVER(inode), GFP_KERNEL);
 if (IS_ERR(label))
  return PTR_ERR(label);


 if ((sattr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0)
  nfs4_inode_make_writeable(inode);

 status = nfs4_do_setattr(inode, cred, fattr, sattr, ctx, ((void*)0), label);
 if (status == 0) {
  nfs_setattr_update_inode(inode, sattr, fattr);
  nfs_setsecurity(inode, fattr, label);
 }
 nfs4_label_free(label);
 return status;
}
