
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_dir_level; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int f2fs_move_inline_dirents (struct inode*,struct page*,void*) ;
 int f2fs_move_rehashed_dirents (struct inode*,struct page*,void*) ;

__attribute__((used)) static int f2fs_convert_inline_dir(struct inode *dir, struct page *ipage,
       void *inline_dentry)
{
 if (!F2FS_I(dir)->i_dir_level)
  return f2fs_move_inline_dirents(dir, ipage, inline_dentry);
 else
  return f2fs_move_rehashed_dirents(dir, ipage, inline_dentry);
}
