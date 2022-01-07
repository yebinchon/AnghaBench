
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_sb_info {int sb; } ;
struct f2fs_dir_entry {int dummy; } ;
typedef int nid_t ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_INLINE_DOTS ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct qstr QSTR_INIT (char*,int) ;
 int S_IFDIR ;
 int clear_inode_flag (struct inode*,int ) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_do_add_link (struct inode*,struct qstr*,int *,int ,int ) ;
 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,struct qstr*,struct page**) ;
 int f2fs_info (struct f2fs_sb_info*,char*,int ,int ) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_put_page (struct page*,int ) ;
 scalar_t__ f2fs_readonly (int ) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;

__attribute__((used)) static int __recover_dot_dentries(struct inode *dir, nid_t pino)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);
 struct qstr dot = QSTR_INIT(".", 1);
 struct qstr dotdot = QSTR_INIT("..", 2);
 struct f2fs_dir_entry *de;
 struct page *page;
 int err = 0;

 if (f2fs_readonly(sbi->sb)) {
  f2fs_info(sbi, "skip recovering inline_dots inode (ino:%lu, pino:%u) in readonly mountpoint",
     dir->i_ino, pino);
  return 0;
 }

 err = dquot_initialize(dir);
 if (err)
  return err;

 f2fs_balance_fs(sbi, 1);

 f2fs_lock_op(sbi);

 de = f2fs_find_entry(dir, &dot, &page);
 if (de) {
  f2fs_put_page(page, 0);
 } else if (IS_ERR(page)) {
  err = PTR_ERR(page);
  goto out;
 } else {
  err = f2fs_do_add_link(dir, &dot, ((void*)0), dir->i_ino, S_IFDIR);
  if (err)
   goto out;
 }

 de = f2fs_find_entry(dir, &dotdot, &page);
 if (de)
  f2fs_put_page(page, 0);
 else if (IS_ERR(page))
  err = PTR_ERR(page);
 else
  err = f2fs_do_add_link(dir, &dotdot, ((void*)0), pino, S_IFDIR);
out:
 if (!err)
  clear_inode_flag(dir, FI_INLINE_DOTS);

 f2fs_unlock_op(sbi);
 return err;
}
