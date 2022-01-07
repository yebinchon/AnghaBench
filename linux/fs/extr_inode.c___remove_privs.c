
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;


 int ATTR_FORCE ;
 int notify_change (struct dentry*,struct iattr*,int *) ;

__attribute__((used)) static int __remove_privs(struct dentry *dentry, int kill)
{
 struct iattr newattrs;

 newattrs.ia_valid = ATTR_FORCE | kill;




 return notify_change(dentry, &newattrs, ((void*)0));
}
