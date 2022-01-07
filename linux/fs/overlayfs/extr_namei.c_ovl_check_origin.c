
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_path {int dummy; } ;
struct ovl_fs {int dummy; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;
 int ESTALE ;
 scalar_t__ IS_ERR_OR_NULL (struct ovl_fh*) ;
 int OVL_XATTR_ORIGIN ;
 int PTR_ERR (struct ovl_fh*) ;
 scalar_t__ WARN_ON (unsigned int) ;
 int kfree (struct ovl_fh*) ;
 int ovl_check_origin_fh (struct ovl_fs*,struct ovl_fh*,int,struct dentry*,struct ovl_path**) ;
 struct ovl_fh* ovl_get_fh (struct dentry*,int ) ;

__attribute__((used)) static int ovl_check_origin(struct ovl_fs *ofs, struct dentry *upperdentry,
       struct ovl_path **stackp, unsigned int *ctrp)
{
 struct ovl_fh *fh = ovl_get_fh(upperdentry, OVL_XATTR_ORIGIN);
 int err;

 if (IS_ERR_OR_NULL(fh))
  return PTR_ERR(fh);

 err = ovl_check_origin_fh(ofs, fh, 0, upperdentry, stackp);
 kfree(fh);

 if (err) {
  if (err == -ESTALE)
   return 0;
  return err;
 }

 if (WARN_ON(*ctrp))
  return -EIO;

 *ctrp = 1;
 return 0;
}
