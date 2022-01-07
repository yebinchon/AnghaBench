
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct TYPE_3__ {int s_encoding; } ;


 int EINVAL ;
 int ENOENT ;
 struct page* ERR_PTR (int) ;
 TYPE_1__* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 struct f2fs_dir_entry* __f2fs_find_entry (struct inode*,struct fscrypt_name*,struct page**) ;
 scalar_t__ f2fs_has_strict_mode (TYPE_1__*) ;
 int fscrypt_free_filename (struct fscrypt_name*) ;
 int fscrypt_setup_filename (struct inode*,struct qstr const*,int,struct fscrypt_name*) ;
 scalar_t__ utf8_validate (int ,struct qstr const*) ;

struct f2fs_dir_entry *f2fs_find_entry(struct inode *dir,
   const struct qstr *child, struct page **res_page)
{
 struct f2fs_dir_entry *de = ((void*)0);
 struct fscrypt_name fname;
 int err;
 err = fscrypt_setup_filename(dir, child, 1, &fname);
 if (err) {
  if (err == -ENOENT)
   *res_page = ((void*)0);
  else
   *res_page = ERR_PTR(err);
  return ((void*)0);
 }

 de = __f2fs_find_entry(dir, &fname, res_page);

 fscrypt_free_filename(&fname);
 return de;
}
