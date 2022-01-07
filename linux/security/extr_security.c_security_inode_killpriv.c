
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int call_int_hook (int ,int ,struct dentry*) ;
 int inode_killpriv ;

int security_inode_killpriv(struct dentry *dentry)
{
 return call_int_hook(inode_killpriv, 0, dentry);
}
