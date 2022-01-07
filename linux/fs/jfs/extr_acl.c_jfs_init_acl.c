
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct posix_acl {int dummy; } ;
struct inode {int i_mode; int * i_acl; int * i_default_acl; } ;
struct TYPE_2__ {int mode2; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 TYPE_1__* JFS_IP (struct inode*) ;
 int __jfs_set_acl (int ,struct inode*,int ,struct posix_acl*) ;
 int posix_acl_create (struct inode*,int*,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;

int jfs_init_acl(tid_t tid, struct inode *inode, struct inode *dir)
{
 struct posix_acl *default_acl, *acl;
 int rc = 0;

 rc = posix_acl_create(dir, &inode->i_mode, &default_acl, &acl);
 if (rc)
  return rc;

 if (default_acl) {
  rc = __jfs_set_acl(tid, inode, ACL_TYPE_DEFAULT, default_acl);
  posix_acl_release(default_acl);
 } else {
  inode->i_default_acl = ((void*)0);
 }

 if (acl) {
  if (!rc)
   rc = __jfs_set_acl(tid, inode, ACL_TYPE_ACCESS, acl);
  posix_acl_release(acl);
 } else {
  inode->i_acl = ((void*)0);
 }

 JFS_IP(inode)->mode2 = (JFS_IP(inode)->mode2 & 0xffff0000) |
          inode->i_mode;

 return rc;
}
