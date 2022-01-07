
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 scalar_t__ fscrypt_get_encryption_info (struct inode*) ;
 scalar_t__ ubifs_crypt_is_encrypted (struct inode*) ;

__attribute__((used)) static int ubifs_dir_open(struct inode *dir, struct file *file)
{
 if (ubifs_crypt_is_encrypted(dir))
  return fscrypt_get_encryption_info(dir) ? -EACCES : 0;

 return 0;
}
