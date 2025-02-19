
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_cno; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __u64 ;


 int NILFS_ROOT_INO ;
 struct dentry* d_find_alias (struct inode*) ;
 int dput (struct dentry*) ;
 int iput (struct inode*) ;
 struct inode* nilfs_ilookup (struct super_block*,struct nilfs_root*,int ) ;
 scalar_t__ nilfs_last_cno (struct the_nilfs*) ;
 struct nilfs_root* nilfs_lookup_root (struct the_nilfs*,scalar_t__) ;
 int nilfs_put_root (struct nilfs_root*) ;
 int nilfs_tree_is_busy (struct dentry*) ;

int nilfs_checkpoint_is_mounted(struct super_block *sb, __u64 cno)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_root *root;
 struct inode *inode;
 struct dentry *dentry;
 int ret;

 if (cno > nilfs->ns_cno)
  return 0;

 if (cno >= nilfs_last_cno(nilfs))
  return 1;

 ret = 0;
 root = nilfs_lookup_root(nilfs, cno);
 if (root) {
  inode = nilfs_ilookup(sb, root, NILFS_ROOT_INO);
  if (inode) {
   dentry = d_find_alias(inode);
   if (dentry) {
    ret = nilfs_tree_is_busy(dentry);
    dput(dentry);
   }
   iput(inode);
  }
  nilfs_put_root(root);
 }
 return ret;
}
