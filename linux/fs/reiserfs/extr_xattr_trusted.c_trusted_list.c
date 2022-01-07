
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int IS_PRIVATE (int ) ;
 scalar_t__ capable (int ) ;
 int d_inode (struct dentry*) ;

__attribute__((used)) static bool trusted_list(struct dentry *dentry)
{
 return capable(CAP_SYS_ADMIN) && !IS_PRIVATE(d_inode(dentry));
}
