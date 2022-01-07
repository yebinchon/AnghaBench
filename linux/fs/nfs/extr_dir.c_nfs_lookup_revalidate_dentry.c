
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {int (* lookup ) (struct inode*,int *,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;} ;


 int ENOENT ;
 int ENOMEM ;
 int ESTALE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 int NFS_FH (struct inode*) ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 struct nfs4_label* nfs4_label_alloc (int ,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_fh* nfs_alloc_fhandle () ;
 scalar_t__ nfs_compare_fh (int ,struct nfs_fh*) ;
 int nfs_force_use_readdirplus (struct inode*) ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_fhandle (struct nfs_fh*) ;
 int nfs_lookup_revalidate_done (struct inode*,struct dentry*,struct inode*,int) ;
 scalar_t__ nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_setsecurity (struct inode*,struct nfs_fattr*,struct nfs4_label*) ;
 int stub1 (struct inode*,int *,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;

__attribute__((used)) static int
nfs_lookup_revalidate_dentry(struct inode *dir, struct dentry *dentry,
        struct inode *inode)
{
 struct nfs_fh *fhandle;
 struct nfs_fattr *fattr;
 struct nfs4_label *label;
 int ret;

 ret = -ENOMEM;
 fhandle = nfs_alloc_fhandle();
 fattr = nfs_alloc_fattr();
 label = nfs4_label_alloc(NFS_SERVER(inode), GFP_KERNEL);
 if (fhandle == ((void*)0) || fattr == ((void*)0) || IS_ERR(label))
  goto out;

 ret = NFS_PROTO(dir)->lookup(dir, &dentry->d_name, fhandle, fattr, label);
 if (ret < 0) {
  if (ret == -ESTALE || ret == -ENOENT)
   ret = 0;
  goto out;
 }
 ret = 0;
 if (nfs_compare_fh(NFS_FH(inode), fhandle))
  goto out;
 if (nfs_refresh_inode(inode, fattr) < 0)
  goto out;

 nfs_setsecurity(inode, fattr, label);
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));


 nfs_force_use_readdirplus(dir);
 ret = 1;
out:
 nfs_free_fattr(fattr);
 nfs_free_fhandle(fhandle);
 nfs4_label_free(label);
 return nfs_lookup_revalidate_done(dir, dentry, inode, ret);
}
