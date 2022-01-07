
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int capable (int ) ;

__attribute__((used)) static bool squashfs_trusted_xattr_handler_list(struct dentry *d)
{
 return capable(CAP_SYS_ADMIN);
}
