
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int __f2fs_set_acl (struct inode*,int,struct posix_acl*,int *) ;
 int f2fs_cp_error (int ) ;
 scalar_t__ unlikely (int ) ;

int f2fs_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
  return -EIO;

 return __f2fs_set_acl(inode, type, acl, ((void*)0));
}
