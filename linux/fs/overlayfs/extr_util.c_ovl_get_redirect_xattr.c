
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EINVAL ;
 int ENODATA ;
 char* ERR_PTR (int) ;
 int OVL_XATTR_REDIRECT ;
 int kfree (char*) ;
 int ovl_getxattr (struct dentry*,int ,char**,int) ;
 int pr_warn_ratelimited (char*,char*) ;
 int * strchr (char*,char) ;
 char* strchrnul (char*,char) ;

char *ovl_get_redirect_xattr(struct dentry *dentry, int padding)
{
 int res;
 char *s, *next, *buf = ((void*)0);

 res = ovl_getxattr(dentry, OVL_XATTR_REDIRECT, &buf, padding + 1);
 if (res == -ENODATA)
  return ((void*)0);
 if (res < 0)
  return ERR_PTR(res);
 if (res == 0)
  goto invalid;

 if (buf[0] == '/') {
  for (s = buf; *s++ == '/'; s = next) {
   next = strchrnul(s, '/');
   if (s == next)
    goto invalid;
  }
 } else {
  if (strchr(buf, '/') != ((void*)0))
   goto invalid;
 }

 return buf;
invalid:
 pr_warn_ratelimited("overlayfs: invalid redirect (%s)\n", buf);
 res = -EINVAL;
 kfree(buf);
 return ERR_PTR(res);
}
