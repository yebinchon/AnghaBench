
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_iget_args {unsigned long ino; int for_gc; int cno; struct nilfs_root* root; } ;
struct inode {int dummy; } ;


 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct nilfs_iget_args*) ;
 int nilfs_iget_set ;
 int nilfs_iget_test ;

struct inode *nilfs_iget_locked(struct super_block *sb, struct nilfs_root *root,
    unsigned long ino)
{
 struct nilfs_iget_args args = {
  .ino = ino, .root = root, .cno = 0, .for_gc = 0
 };

 return iget5_locked(sb, ino, nilfs_iget_test, nilfs_iget_set, &args);
}
