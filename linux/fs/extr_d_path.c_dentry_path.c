
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ENAMETOOLONG ;
 char* ERR_PTR (int ) ;
 int IS_ERR (char*) ;
 char* __dentry_path (struct dentry*,char*,int) ;
 scalar_t__ d_unlinked (struct dentry*) ;
 scalar_t__ prepend (char**,int*,char*,int) ;

char *dentry_path(struct dentry *dentry, char *buf, int buflen)
{
 char *p = ((void*)0);
 char *retval;

 if (d_unlinked(dentry)) {
  p = buf + buflen;
  if (prepend(&p, &buflen, "//deleted", 10) != 0)
   goto Elong;
  buflen++;
 }
 retval = __dentry_path(dentry, buf, buflen);
 if (!IS_ERR(retval) && p)
  *p = '/';
 return retval;
Elong:
 return ERR_PTR(-ENAMETOOLONG);
}
