
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; scalar_t__ i_ino; int i_mode; int * i_fop; int * i_op; int i_ctime; int i_atime; int i_mtime; } ;
typedef int ino_t ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int I_NEW ;
 scalar_t__ OPENPROM_ROOT_INO ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int current_time (struct inode*) ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int openprom_inode_operations ;
 int openprom_operations ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *openprom_iget(struct super_block *sb, ino_t ino)
{
 struct inode *inode;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (inode->i_state & I_NEW) {
  inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
  if (inode->i_ino == OPENPROM_ROOT_INO) {
   inode->i_op = &openprom_inode_operations;
   inode->i_fop = &openprom_operations;
   inode->i_mode = S_IFDIR | S_IRUGO | S_IXUGO;
  }
  unlock_new_inode(inode);
 }
 return inode;
}
