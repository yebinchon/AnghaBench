
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int len; scalar_t__ name; } ;
struct inode {int i_sb; } ;
struct fscrypt_name {int crypto_buf; int disk_name; struct qstr* usr_fname; } ;
struct TYPE_3__ {int len; scalar_t__ name; } ;
struct ext4_filename {struct qstr* usr_fname; TYPE_1__ cf_name; int crypto_buf; int disk_name; } ;
struct ext4_dir_entry_2 {int name_len; scalar_t__ name; int inode; } ;
struct TYPE_4__ {scalar_t__ s_encoding; } ;


 TYPE_2__* EXT4_SB (int ) ;
 scalar_t__ IS_CASEFOLDED (struct inode const*) ;
 int ext4_ci_compare (struct inode const*,struct qstr*,struct qstr const*,int) ;
 int fscrypt_match_name (struct fscrypt_name*,scalar_t__,int ) ;

__attribute__((used)) static inline bool ext4_match(const struct inode *parent,
         const struct ext4_filename *fname,
         const struct ext4_dir_entry_2 *de)
{
 struct fscrypt_name f;




 if (!de->inode)
  return 0;

 f.usr_fname = fname->usr_fname;
 f.disk_name = fname->disk_name;
 return fscrypt_match_name(&f, de->name, de->name_len);
}
