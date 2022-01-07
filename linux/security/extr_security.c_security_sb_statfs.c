
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int call_int_hook (int ,int ,struct dentry*) ;
 int sb_statfs ;

int security_sb_statfs(struct dentry *dentry)
{
 return call_int_hook(sb_statfs, 0, dentry);
}
