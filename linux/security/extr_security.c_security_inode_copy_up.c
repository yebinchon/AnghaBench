
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct dentry*,struct cred**) ;
 int inode_copy_up ;

int security_inode_copy_up(struct dentry *src, struct cred **new)
{
 return call_int_hook(inode_copy_up, 0, src, new);
}
