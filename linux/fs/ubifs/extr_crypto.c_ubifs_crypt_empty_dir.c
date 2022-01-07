
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ ubifs_check_dir_empty (struct inode*) ;

__attribute__((used)) static bool ubifs_crypt_empty_dir(struct inode *inode)
{
 return ubifs_check_dir_empty(inode) == 0;
}
