
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct ovl_fh*) ;
 int PTR_ERR (struct ovl_fh*) ;
 int kfree (struct ovl_fh*) ;
 struct ovl_fh* ovl_encode_real_fh (struct dentry*,int) ;
 int ovl_get_index_name_fh (struct ovl_fh*,struct qstr*) ;

int ovl_get_index_name(struct dentry *origin, struct qstr *name)
{
 struct ovl_fh *fh;
 int err;

 fh = ovl_encode_real_fh(origin, 0);
 if (IS_ERR(fh))
  return PTR_ERR(fh);

 err = ovl_get_index_name_fh(fh, name);

 kfree(fh);
 return err;
}
