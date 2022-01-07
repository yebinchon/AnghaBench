
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fh {int len; } ;
struct dentry {int d_sb; } ;


 scalar_t__ IS_ERR (struct ovl_fh const*) ;
 int OVL_XATTR_ORIGIN ;
 int PTR_ERR (struct ovl_fh const*) ;
 int kfree (struct ovl_fh const*) ;
 scalar_t__ ovl_can_decode_fh (int ) ;
 int ovl_check_setxattr (struct dentry*,struct dentry*,int ,struct ovl_fh const*,int ,int ) ;
 struct ovl_fh* ovl_encode_real_fh (struct dentry*,int) ;

int ovl_set_origin(struct dentry *dentry, struct dentry *lower,
     struct dentry *upper)
{
 const struct ovl_fh *fh = ((void*)0);
 int err;






 if (ovl_can_decode_fh(lower->d_sb)) {
  fh = ovl_encode_real_fh(lower, 0);
  if (IS_ERR(fh))
   return PTR_ERR(fh);
 }




 err = ovl_check_setxattr(dentry, upper, OVL_XATTR_ORIGIN, fh,
     fh ? fh->len : 0, 0);
 kfree(fh);

 return err;
}
