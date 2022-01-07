
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct TYPE_2__ {unsigned int i_current_depth; int task; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 unsigned int MAX_DIR_HASH_DEPTH ;
 int current ;
 unsigned long dir_blocks (struct inode*) ;
 struct f2fs_dir_entry* f2fs_find_in_inline_dir (struct inode*,struct fscrypt_name*,struct page**) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_i_depth_write (struct inode*,unsigned int) ;
 int f2fs_warn (int ,char*,int ,unsigned int) ;
 struct f2fs_dir_entry* find_in_level (struct inode*,unsigned int,struct fscrypt_name*,struct page**) ;
 scalar_t__ unlikely (int) ;

struct f2fs_dir_entry *__f2fs_find_entry(struct inode *dir,
   struct fscrypt_name *fname, struct page **res_page)
{
 unsigned long npages = dir_blocks(dir);
 struct f2fs_dir_entry *de = ((void*)0);
 unsigned int max_depth;
 unsigned int level;

 if (f2fs_has_inline_dentry(dir)) {
  *res_page = ((void*)0);
  de = f2fs_find_in_inline_dir(dir, fname, res_page);
  goto out;
 }

 if (npages == 0) {
  *res_page = ((void*)0);
  goto out;
 }

 max_depth = F2FS_I(dir)->i_current_depth;
 if (unlikely(max_depth > MAX_DIR_HASH_DEPTH)) {
  f2fs_warn(F2FS_I_SB(dir), "Corrupted max_depth of %lu: %u",
     dir->i_ino, max_depth);
  max_depth = MAX_DIR_HASH_DEPTH;
  f2fs_i_depth_write(dir, max_depth);
 }

 for (level = 0; level < max_depth; level++) {
  *res_page = ((void*)0);
  de = find_in_level(dir, level, fname, res_page);
  if (de || IS_ERR(*res_page))
   break;
 }
out:

 if (!de)
  F2FS_I(dir)->task = current;
 return de;
}
