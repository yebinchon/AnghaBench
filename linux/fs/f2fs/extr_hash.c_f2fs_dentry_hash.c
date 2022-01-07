
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_map {int dummy; } ;
typedef struct qstr {int len; unsigned char* name; } const qstr ;
struct inode {int i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_sb_info {struct unicode_map* s_encoding; } ;
typedef int f2fs_hash_t ;


 int ENOMEM ;
 struct f2fs_sb_info* F2FS_SB (int ) ;
 int GFP_KERNEL ;
 int IS_CASEFOLDED (struct inode const*) ;
 int PATH_MAX ;
 int __f2fs_dentry_hash (struct qstr const*,struct fscrypt_name*) ;
 unsigned char* f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int kvfree (unsigned char*) ;
 int utf8_casefold (struct unicode_map const*,struct qstr const*,unsigned char*,int) ;

f2fs_hash_t f2fs_dentry_hash(const struct inode *dir,
  const struct qstr *name_info, struct fscrypt_name *fname)
{
 return __f2fs_dentry_hash(name_info, fname);
}
