
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_iget_args {unsigned long ino; int for_gc; int cno; int * root; } ;
struct inode {int i_state; } ;
typedef int __u64 ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct nilfs_iget_args*) ;
 int iget_failed (struct inode*) ;
 int nilfs_iget_set ;
 int nilfs_iget_test ;
 int nilfs_init_gcinode (struct inode*) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *nilfs_iget_for_gc(struct super_block *sb, unsigned long ino,
    __u64 cno)
{
 struct nilfs_iget_args args = {
  .ino = ino, .root = ((void*)0), .cno = cno, .for_gc = 1
 };
 struct inode *inode;
 int err;

 inode = iget5_locked(sb, ino, nilfs_iget_test, nilfs_iget_set, &args);
 if (unlikely(!inode))
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 err = nilfs_init_gcinode(inode);
 if (unlikely(err)) {
  iget_failed(inode);
  return ERR_PTR(err);
 }
 unlock_new_inode(inode);
 return inode;
}
