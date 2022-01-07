
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_root {int dummy; } ;
struct nilfs_iget_args {unsigned long ino; int for_gc; int cno; struct nilfs_root* root; } ;
struct inode {int dummy; } ;


 int insert_inode_locked4 (struct inode*,unsigned long,int ,struct nilfs_iget_args*) ;
 int nilfs_iget_test ;

__attribute__((used)) static int nilfs_insert_inode_locked(struct inode *inode,
         struct nilfs_root *root,
         unsigned long ino)
{
 struct nilfs_iget_args args = {
  .ino = ino, .root = root, .cno = 0, .for_gc = 0
 };

 return insert_inode_locked4(inode, ino, nilfs_iget_test, &args);
}
