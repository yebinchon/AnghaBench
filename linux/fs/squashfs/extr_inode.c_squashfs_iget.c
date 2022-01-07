
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 int TRACE (char*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned int) ;
 int squashfs_read_inode (struct inode*,long long) ;
 int unlock_new_inode (struct inode*) ;

struct inode *squashfs_iget(struct super_block *sb, long long ino,
    unsigned int ino_number)
{
 struct inode *inode = iget_locked(sb, ino_number);
 int err;

 TRACE("Entered squashfs_iget\n");

 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 err = squashfs_read_inode(inode, ino);
 if (err) {
  iget_failed(inode);
  return ERR_PTR(err);
 }

 unlock_new_inode(inode);
 return inode;
}
