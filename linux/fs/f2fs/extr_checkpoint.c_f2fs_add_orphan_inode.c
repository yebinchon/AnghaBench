
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;


 int F2FS_I_SB (struct inode*) ;
 int ORPHAN_INO ;
 int __add_ino_entry (int ,int ,int ,int ) ;
 int f2fs_update_inode_page (struct inode*) ;

void f2fs_add_orphan_inode(struct inode *inode)
{

 __add_ino_entry(F2FS_I_SB(inode), inode->i_ino, 0, ORPHAN_INO);
 f2fs_update_inode_page(inode);
}
