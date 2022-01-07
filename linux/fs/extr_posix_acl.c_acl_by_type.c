
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {struct posix_acl* i_default_acl; struct posix_acl* i_acl; } ;




 int BUG () ;

__attribute__((used)) static struct posix_acl **acl_by_type(struct inode *inode, int type)
{
 switch (type) {
 case 129:
  return &inode->i_acl;
 case 128:
  return &inode->i_default_acl;
 default:
  BUG();
 }
}
