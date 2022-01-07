
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;


 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ovl_fh* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct ovl_fh*) ;
 struct ovl_fh* kzalloc (int,int ) ;
 int ovl_check_fh_len (struct ovl_fh*,int) ;
 int pr_warn_ratelimited (char*,int,...) ;
 int vfs_getxattr (struct dentry*,char const*,struct ovl_fh*,int) ;

__attribute__((used)) static struct ovl_fh *ovl_get_fh(struct dentry *dentry, const char *name)
{
 int res, err;
 struct ovl_fh *fh = ((void*)0);

 res = vfs_getxattr(dentry, name, ((void*)0), 0);
 if (res < 0) {
  if (res == -ENODATA || res == -EOPNOTSUPP)
   return ((void*)0);
  goto fail;
 }

 if (res == 0)
  return ((void*)0);

 fh = kzalloc(res, GFP_KERNEL);
 if (!fh)
  return ERR_PTR(-ENOMEM);

 res = vfs_getxattr(dentry, name, fh, res);
 if (res < 0)
  goto fail;

 err = ovl_check_fh_len(fh, res);
 if (err < 0) {
  if (err == -ENODATA)
   goto out;
  goto invalid;
 }

 return fh;

out:
 kfree(fh);
 return ((void*)0);

fail:
 pr_warn_ratelimited("overlayfs: failed to get origin (%i)\n", res);
 goto out;
invalid:
 pr_warn_ratelimited("overlayfs: invalid origin (%*phN)\n", res, fh);
 goto out;
}
