
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
typedef int nid_t ;
struct TYPE_2__ {int * task; } ;


 int EEXIST ;
 TYPE_1__* F2FS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct f2fs_dir_entry* __f2fs_find_entry (struct inode*,struct fscrypt_name*,struct page**) ;
 int * current ;
 int f2fs_add_dentry (struct inode*,struct fscrypt_name*,struct inode*,int ,int ) ;
 int f2fs_put_page (struct page*,int ) ;
 int fscrypt_free_filename (struct fscrypt_name*) ;
 int fscrypt_setup_filename (struct inode*,struct qstr const*,int ,struct fscrypt_name*) ;

int f2fs_do_add_link(struct inode *dir, const struct qstr *name,
    struct inode *inode, nid_t ino, umode_t mode)
{
 struct fscrypt_name fname;
 struct page *page = ((void*)0);
 struct f2fs_dir_entry *de = ((void*)0);
 int err;

 err = fscrypt_setup_filename(dir, name, 0, &fname);
 if (err)
  return err;
 if (current != F2FS_I(dir)->task) {
  de = __f2fs_find_entry(dir, &fname, &page);
  F2FS_I(dir)->task = ((void*)0);
 }
 if (de) {
  f2fs_put_page(page, 0);
  err = -EEXIST;
 } else if (IS_ERR(page)) {
  err = PTR_ERR(page);
 } else {
  err = f2fs_add_dentry(dir, &fname, inode, ino, mode);
 }
 fscrypt_free_filename(&fname);
 return err;
}
