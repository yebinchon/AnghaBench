
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {int dirty; int ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int dbg_gen (char*,int ) ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

__attribute__((used)) static void ubifs_dirty_inode(struct inode *inode, int flags)
{
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_inode *ui = ubifs_inode(inode);

 ubifs_assert(c, mutex_is_locked(&ui->ui_mutex));
 if (!ui->dirty) {
  ui->dirty = 1;
  dbg_gen("inode %lu", inode->i_ino);
 }
}
