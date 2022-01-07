
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 char* __dentry_name (struct dentry*,char*) ;
 char* __getname () ;

__attribute__((used)) static char *dentry_name(struct dentry *dentry)
{
 char *name = __getname();
 if (!name)
  return ((void*)0);

 return __dentry_name(dentry, name);
}
