
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct kernfs_super_info {int root; } ;
struct kernfs_node {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;


 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int iput (struct inode*) ;
 struct kernfs_node* kernfs_find_and_get_node_by_ino (int ,int ) ;
 struct inode* kernfs_get_inode (struct super_block*,struct kernfs_node*) ;
 struct kernfs_super_info* kernfs_info (struct super_block*) ;
 int kernfs_put (struct kernfs_node*) ;

__attribute__((used)) static struct inode *kernfs_fh_get_inode(struct super_block *sb,
  u64 ino, u32 generation)
{
 struct kernfs_super_info *info = kernfs_info(sb);
 struct inode *inode;
 struct kernfs_node *kn;

 if (ino == 0)
  return ERR_PTR(-ESTALE);

 kn = kernfs_find_and_get_node_by_ino(info->root, ino);
 if (!kn)
  return ERR_PTR(-ESTALE);
 inode = kernfs_get_inode(sb, kn);
 kernfs_put(kn);
 if (!inode)
  return ERR_PTR(-ESTALE);

 if (generation && inode->i_generation != generation) {

  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
