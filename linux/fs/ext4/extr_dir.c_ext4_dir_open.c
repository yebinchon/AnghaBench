
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ fscrypt_get_encryption_info (struct inode*) ;

__attribute__((used)) static int ext4_dir_open(struct inode * inode, struct file * filp)
{
 if (IS_ENCRYPTED(inode))
  return fscrypt_get_encryption_info(inode) ? -EACCES : 0;
 return 0;
}
