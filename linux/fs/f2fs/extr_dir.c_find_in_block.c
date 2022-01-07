
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;
typedef int f2fs_hash_t ;


 struct f2fs_dir_entry* f2fs_find_target_dentry (struct fscrypt_name*,int ,int*,struct f2fs_dentry_ptr*) ;
 int make_dentry_ptr_block (struct inode*,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static struct f2fs_dir_entry *find_in_block(struct inode *dir,
    struct page *dentry_page,
    struct fscrypt_name *fname,
    f2fs_hash_t namehash,
    int *max_slots,
    struct page **res_page)
{
 struct f2fs_dentry_block *dentry_blk;
 struct f2fs_dir_entry *de;
 struct f2fs_dentry_ptr d;

 dentry_blk = (struct f2fs_dentry_block *)page_address(dentry_page);

 make_dentry_ptr_block(dir, &d, dentry_blk);
 de = f2fs_find_target_dentry(fname, namehash, max_slots, &d);
 if (de)
  *res_page = dentry_page;

 return de;
}
