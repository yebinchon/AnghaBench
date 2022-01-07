
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODATA ;
 size_t ENOMEM ;
 size_t EOPNOTSUPP ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int pr_warn_ratelimited (char*,char*,size_t) ;
 size_t vfs_getxattr (struct dentry*,char*,char*,size_t) ;

ssize_t ovl_getxattr(struct dentry *dentry, char *name, char **value,
       size_t padding)
{
 ssize_t res;
 char *buf = ((void*)0);

 res = vfs_getxattr(dentry, name, ((void*)0), 0);
 if (res < 0) {
  if (res == -ENODATA || res == -EOPNOTSUPP)
   return -ENODATA;
  goto fail;
 }

 if (res != 0) {
  buf = kzalloc(res + padding, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;

  res = vfs_getxattr(dentry, name, buf, res);
  if (res < 0)
   goto fail;
 }
 *value = buf;

 return res;

fail:
 pr_warn_ratelimited("overlayfs: failed to get xattr %s: err=%zi)\n",
       name, res);
 kfree(buf);
 return res;
}
