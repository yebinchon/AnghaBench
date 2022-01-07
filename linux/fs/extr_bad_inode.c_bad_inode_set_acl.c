
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_set_acl(struct inode *inode, struct posix_acl *acl,
        int type)
{
 return -EIO;
}
