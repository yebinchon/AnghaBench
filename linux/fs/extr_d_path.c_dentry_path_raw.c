
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 char* __dentry_path (struct dentry*,char*,int) ;

char *dentry_path_raw(struct dentry *dentry, char *buf, int buflen)
{
 return __dentry_path(dentry, buf, buflen);
}
