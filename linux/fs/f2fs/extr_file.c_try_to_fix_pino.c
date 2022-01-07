
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; } ;
struct f2fs_inode_info {int i_sem; } ;
typedef int nid_t ;


 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 int down_write (int *) ;
 int f2fs_i_pino_write (struct inode*,int ) ;
 int file_got_pino (struct inode*) ;
 scalar_t__ file_wrong_pino (struct inode*) ;
 scalar_t__ get_parent_ino (struct inode*,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void try_to_fix_pino(struct inode *inode)
{
 struct f2fs_inode_info *fi = F2FS_I(inode);
 nid_t pino;

 down_write(&fi->i_sem);
 if (file_wrong_pino(inode) && inode->i_nlink == 1 &&
   get_parent_ino(inode, &pino)) {
  f2fs_i_pino_write(inode, pino);
  file_got_pino(inode);
 }
 up_write(&fi->i_sem);
}
