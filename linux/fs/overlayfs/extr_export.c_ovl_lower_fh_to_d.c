
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_path {struct inode* dentry; } ;
struct ovl_fs {scalar_t__ indexdir; } ;
struct ovl_fh {int dummy; } ;
struct inode {int d_flags; } ;
struct dentry {int d_flags; } ;


 int DCACHE_DISCONNECTED ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ IS_ERR_OR_NULL (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* d_find_any_alias (struct inode*) ;
 scalar_t__ d_is_dir (struct inode*) ;
 int dput (struct inode*) ;
 int iput (struct inode*) ;
 int ovl_check_origin_fh (struct ovl_fs*,struct ovl_fh*,int,int *,struct ovl_path**) ;
 struct inode* ovl_get_dentry (struct super_block*,struct inode*,struct ovl_path*,struct inode*) ;
 struct inode* ovl_get_index_fh (struct ovl_fs*,struct ovl_fh*) ;
 struct inode* ovl_index_upper (struct ovl_fs*,struct inode*) ;
 struct inode* ovl_lookup_inode (struct super_block*,struct inode*,int) ;
 int ovl_verify_origin (struct inode*,struct inode*,int) ;

__attribute__((used)) static struct dentry *ovl_lower_fh_to_d(struct super_block *sb,
     struct ovl_fh *fh)
{
 struct ovl_fs *ofs = sb->s_fs_info;
 struct ovl_path origin = { };
 struct ovl_path *stack = &origin;
 struct dentry *dentry = ((void*)0);
 struct dentry *index = ((void*)0);
 struct inode *inode;
 int err;


 err = ovl_check_origin_fh(ofs, fh, 0, ((void*)0), &stack);
 if (err)
  return ERR_PTR(err);

 if (!d_is_dir(origin.dentry) ||
     !(origin.dentry->d_flags & DCACHE_DISCONNECTED)) {
  inode = ovl_lookup_inode(sb, origin.dentry, 0);
  err = PTR_ERR(inode);
  if (IS_ERR(inode))
   goto out_err;
  if (inode) {
   dentry = d_find_any_alias(inode);
   iput(inode);
   if (dentry)
    goto out;
  }
 }


 if (ofs->indexdir) {
  index = ovl_get_index_fh(ofs, fh);
  err = PTR_ERR(index);
  if (IS_ERR(index)) {
   index = ((void*)0);
   goto out_err;
  }
 }


 if (index && d_is_dir(index)) {
  struct dentry *upper = ovl_index_upper(ofs, index);

  err = PTR_ERR(upper);
  if (IS_ERR_OR_NULL(upper))
   goto out_err;

  dentry = ovl_get_dentry(sb, upper, ((void*)0), ((void*)0));
  dput(upper);
  goto out;
 }


 if (d_is_dir(origin.dentry)) {
  dput(origin.dentry);
  origin.dentry = ((void*)0);
  err = ovl_check_origin_fh(ofs, fh, 1, ((void*)0), &stack);
  if (err)
   goto out_err;
 }
 if (index) {
  err = ovl_verify_origin(index, origin.dentry, 0);
  if (err)
   goto out_err;
 }


 dentry = ovl_get_dentry(sb, ((void*)0), &origin, index);

out:
 dput(origin.dentry);
 dput(index);
 return dentry;

out_err:
 dentry = ERR_PTR(err);
 goto out;
}
