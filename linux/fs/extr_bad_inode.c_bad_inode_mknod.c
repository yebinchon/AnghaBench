
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EIO ;

__attribute__((used)) static int bad_inode_mknod (struct inode *dir, struct dentry *dentry,
   umode_t mode, dev_t rdev)
{
 return -EIO;
}
