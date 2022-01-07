
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_layer {scalar_t__ idx; int mnt; } ;
struct ovl_fs {scalar_t__ indexdir; int upper_mnt; } ;
struct inode {int dummy; } ;
typedef struct inode dentry ;


 int EIO ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ IS_ERR_OR_NULL (struct inode*) ;
 scalar_t__ WARN_ON (int) ;
 struct inode* d_find_any_alias (struct inode*) ;
 int d_is_dir (struct inode*) ;
 int dput (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* ovl_dentry_real_at (struct inode*,scalar_t__) ;
 struct inode* ovl_index_upper (struct ovl_fs*,struct inode*) ;
 struct inode* ovl_lookup_index (struct ovl_fs*,int *,struct inode*,int) ;
 struct inode* ovl_lookup_inode (struct super_block*,struct inode*,int) ;
 struct inode* ovl_lookup_real (struct super_block*,struct inode*,struct ovl_layer*) ;

__attribute__((used)) static struct dentry *ovl_lookup_real_inode(struct super_block *sb,
         struct dentry *real,
         struct ovl_layer *layer)
{
 struct ovl_fs *ofs = sb->s_fs_info;
 struct ovl_layer upper_layer = { .mnt = ofs->upper_mnt };
 struct dentry *index = ((void*)0);
 struct dentry *this = ((void*)0);
 struct inode *inode;





 inode = ovl_lookup_inode(sb, real, !layer->idx);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (inode) {
  this = d_find_any_alias(inode);
  iput(inode);
 }





 if (!this && layer->idx && ofs->indexdir && !WARN_ON(!d_is_dir(real))) {
  index = ovl_lookup_index(ofs, ((void*)0), real, 0);
  if (IS_ERR(index))
   return index;
 }


 if (index) {
  struct dentry *upper = ovl_index_upper(ofs, index);

  dput(index);
  if (IS_ERR_OR_NULL(upper))
   return upper;
  this = ovl_lookup_real(sb, upper, &upper_layer);
  dput(upper);
 }

 if (IS_ERR_OR_NULL(this))
  return this;

 if (WARN_ON(ovl_dentry_real_at(this, layer->idx) != real)) {
  dput(this);
  this = ERR_PTR(-EIO);
 }

 return this;
}
