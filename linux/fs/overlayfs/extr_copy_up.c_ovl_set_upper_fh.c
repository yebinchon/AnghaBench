
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fh {int len; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct ovl_fh const*) ;
 int OVL_XATTR_UPPER ;
 int PTR_ERR (struct ovl_fh const*) ;
 int kfree (struct ovl_fh const*) ;
 int ovl_do_setxattr (struct dentry*,int ,struct ovl_fh const*,int ,int ) ;
 struct ovl_fh* ovl_encode_real_fh (struct dentry*,int) ;

__attribute__((used)) static int ovl_set_upper_fh(struct dentry *upper, struct dentry *index)
{
 const struct ovl_fh *fh;
 int err;

 fh = ovl_encode_real_fh(upper, 1);
 if (IS_ERR(fh))
  return PTR_ERR(fh);

 err = ovl_do_setxattr(index, OVL_XATTR_UPPER, fh, fh->len, 0);

 kfree(fh);
 return err;
}
