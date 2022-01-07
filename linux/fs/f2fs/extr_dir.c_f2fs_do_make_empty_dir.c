
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int i_mode; int i_ino; } ;
struct f2fs_dentry_ptr {int dummy; } ;


 struct qstr QSTR_INIT (char*,int) ;
 int f2fs_update_dentry (int ,int ,struct f2fs_dentry_ptr*,struct qstr*,int ,int) ;

void f2fs_do_make_empty_dir(struct inode *inode, struct inode *parent,
     struct f2fs_dentry_ptr *d)
{
 struct qstr dot = QSTR_INIT(".", 1);
 struct qstr dotdot = QSTR_INIT("..", 2);


 f2fs_update_dentry(inode->i_ino, inode->i_mode, d, &dot, 0, 0);


 f2fs_update_dentry(parent->i_ino, parent->i_mode, d, &dotdot, 0, 1);
}
