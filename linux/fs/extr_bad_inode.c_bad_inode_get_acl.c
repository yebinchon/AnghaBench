
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EIO ;
 struct posix_acl* ERR_PTR (int ) ;

__attribute__((used)) static struct posix_acl *bad_inode_get_acl(struct inode *inode, int type)
{
 return ERR_PTR(-EIO);
}
