
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int d_inode (struct dentry*) ;

__attribute__((used)) static bool security_list(struct dentry *dentry)
{
 return !IS_PRIVATE(d_inode(dentry));
}
