
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; scalar_t__ name; } ;
struct inode {int dummy; } ;
struct fscrypt_str {int len; scalar_t__ name; } ;
struct fscrypt_name {struct qstr* usr_fname; } ;
struct f2fs_sb_info {scalar_t__ s_encoding; } ;
struct f2fs_dir_entry {scalar_t__ hash_code; int name_len; } ;
struct f2fs_dentry_ptr {scalar_t__* filename; struct inode* inode; } ;
typedef scalar_t__ f2fs_hash_t ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 int f2fs_ci_compare (struct inode*,struct qstr*,struct qstr*,int) ;
 scalar_t__ fscrypt_match_name (struct fscrypt_name*,scalar_t__,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline bool f2fs_match_name(struct f2fs_dentry_ptr *d,
     struct f2fs_dir_entry *de,
     struct fscrypt_name *fname,
     struct fscrypt_str *cf_str,
     unsigned long bit_pos,
     f2fs_hash_t namehash)
{






 if (de->hash_code != namehash)
  return 0;
 if (fscrypt_match_name(fname, d->filename[bit_pos],
    le16_to_cpu(de->name_len)))
  return 1;
 return 0;
}
