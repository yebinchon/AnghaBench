
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ ui_size; scalar_t__ synced_i_size; int ui_mutex; int ui_lock; int dirty; } ;
struct ubifs_info {int dummy; } ;
struct inode {int i_mode; int i_ino; } ;


 int EINVAL ;
 int S_ISREG (int ) ;
 int dbg_is_chk_gen (struct ubifs_info const*) ;
 int dump_stack () ;
 int i_size_read (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_err (struct ubifs_info const*,char*,scalar_t__,scalar_t__,...) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

int dbg_check_synced_i_size(const struct ubifs_info *c, struct inode *inode)
{
 int err = 0;
 struct ubifs_inode *ui = ubifs_inode(inode);

 if (!dbg_is_chk_gen(c))
  return 0;
 if (!S_ISREG(inode->i_mode))
  return 0;

 mutex_lock(&ui->ui_mutex);
 spin_lock(&ui->ui_lock);
 if (ui->ui_size != ui->synced_i_size && !ui->dirty) {
  ubifs_err(c, "ui_size is %lld, synced_i_size is %lld, but inode is clean",
     ui->ui_size, ui->synced_i_size);
  ubifs_err(c, "i_ino %lu, i_mode %#x, i_size %lld", inode->i_ino,
     inode->i_mode, i_size_read(inode));
  dump_stack();
  err = -EINVAL;
 }
 spin_unlock(&ui->ui_lock);
 mutex_unlock(&ui->ui_mutex);
 return err;
}
