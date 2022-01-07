
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; int i_mode; int i_ctime; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int i_sem; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 int f2fs_add_orphan_inode (struct inode*) ;
 int f2fs_i_links_write (struct inode*,int) ;
 int f2fs_i_size_write (struct inode*,int ) ;
 int f2fs_release_orphan_inode (struct f2fs_sb_info*) ;
 int up_write (int *) ;

void f2fs_drop_nlink(struct inode *dir, struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);

 down_write(&F2FS_I(inode)->i_sem);

 if (S_ISDIR(inode->i_mode))
  f2fs_i_links_write(dir, 0);
 inode->i_ctime = current_time(inode);

 f2fs_i_links_write(inode, 0);
 if (S_ISDIR(inode->i_mode)) {
  f2fs_i_links_write(inode, 0);
  f2fs_i_size_write(inode, 0);
 }
 up_write(&F2FS_I(inode)->i_sem);

 if (inode->i_nlink == 0)
  f2fs_add_orphan_inode(inode);
 else
  f2fs_release_orphan_inode(sbi);
}
