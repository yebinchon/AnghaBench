
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ dev_t ;


 int EPERM ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ WHITEOUT_DEV ;
 int ovl_create_object (struct dentry*,int ,scalar_t__,int *) ;

__attribute__((used)) static int ovl_mknod(struct inode *dir, struct dentry *dentry, umode_t mode,
       dev_t rdev)
{

 if (S_ISCHR(mode) && rdev == WHITEOUT_DEV)
  return -EPERM;

 return ovl_create_object(dentry, mode, rdev, ((void*)0));
}
