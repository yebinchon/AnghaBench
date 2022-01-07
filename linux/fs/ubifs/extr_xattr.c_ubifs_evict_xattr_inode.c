
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int vfs_sb; } ;
struct inode {int dummy; } ;
typedef int ino_t ;


 int clear_nlink (struct inode*) ;
 struct inode* ilookup (int ,int ) ;
 int iput (struct inode*) ;

void ubifs_evict_xattr_inode(struct ubifs_info *c, ino_t xattr_inum)
{
 struct inode *inode;

 inode = ilookup(c->vfs_sb, xattr_inum);
 if (inode) {
  clear_nlink(inode);
  iput(inode);
 }
}
