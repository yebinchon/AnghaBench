
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ovl_path {int layer; struct dentry* dentry; } ;
struct ovl_inode_params {int numlower; void* upperdentry; struct dentry* index; struct ovl_path* lowerpath; } ;
struct ovl_entry {TYPE_1__* lowerstack; } ;
struct inode {int i_sb; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_2__ {int layer; void* dentry; } ;


 int EIO ;
 int ENOMEM ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int OVL_UPPERDATA ;
 struct dentry* d_alloc_anon (int ) ;
 struct dentry* d_find_any_alias (struct inode*) ;
 struct dentry* d_instantiate_anon (struct dentry*,struct inode*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 void* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int iput (struct inode*) ;
 struct ovl_entry* ovl_alloc_entry (int) ;
 int ovl_dentry_set_upper_alias (struct dentry*) ;
 struct inode* ovl_get_inode (struct super_block*,struct ovl_inode_params*) ;
 int ovl_set_flag (int ,struct inode*) ;

__attribute__((used)) static struct dentry *ovl_obtain_alias(struct super_block *sb,
           struct dentry *upper_alias,
           struct ovl_path *lowerpath,
           struct dentry *index)
{
 struct dentry *lower = lowerpath ? lowerpath->dentry : ((void*)0);
 struct dentry *upper = upper_alias ?: index;
 struct dentry *dentry;
 struct inode *inode;
 struct ovl_entry *oe;
 struct ovl_inode_params oip = {
  .lowerpath = lowerpath,
  .index = index,
  .numlower = !!lower
 };


 if (d_is_dir(upper ?: lower))
  return ERR_PTR(-EIO);

 oip.upperdentry = dget(upper);
 inode = ovl_get_inode(sb, &oip);
 if (IS_ERR(inode)) {
  dput(upper);
  return ERR_CAST(inode);
 }

 if (upper)
  ovl_set_flag(OVL_UPPERDATA, inode);

 dentry = d_find_any_alias(inode);
 if (!dentry) {
  dentry = d_alloc_anon(inode->i_sb);
  if (!dentry)
   goto nomem;
  oe = ovl_alloc_entry(lower ? 1 : 0);
  if (!oe)
   goto nomem;

  if (lower) {
   oe->lowerstack->dentry = dget(lower);
   oe->lowerstack->layer = lowerpath->layer;
  }
  dentry->d_fsdata = oe;
  if (upper_alias)
   ovl_dentry_set_upper_alias(dentry);
 }

 return d_instantiate_anon(dentry, inode);

nomem:
 iput(inode);
 dput(dentry);
 return ERR_PTR(-ENOMEM);
}
