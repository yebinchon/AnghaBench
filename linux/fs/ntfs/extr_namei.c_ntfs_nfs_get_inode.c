
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;


 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int IS_ERR (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 struct inode* ntfs_iget (struct super_block*,int ) ;

__attribute__((used)) static struct inode *ntfs_nfs_get_inode(struct super_block *sb,
  u64 ino, u32 generation)
{
 struct inode *inode;

 inode = ntfs_iget(sb, ino);
 if (!IS_ERR(inode)) {
  if (is_bad_inode(inode) || inode->i_generation != generation) {
   iput(inode);
   inode = ERR_PTR(-ESTALE);
  }
 }

 return inode;
}
