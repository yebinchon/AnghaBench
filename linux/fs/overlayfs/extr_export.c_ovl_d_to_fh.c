
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fh {int len; int type; } ;
struct dentry {int dummy; } ;


 int EOVERFLOW ;
 scalar_t__ IS_ERR (struct ovl_fh*) ;
 int PTR_ERR (struct ovl_fh*) ;
 int kfree (struct ovl_fh*) ;
 int memcpy (char*,char*,int) ;
 int ovl_check_encode_origin (struct dentry*) ;
 int ovl_dentry_lower (struct dentry*) ;
 int ovl_dentry_upper (struct dentry*) ;
 struct ovl_fh* ovl_encode_real_fh (int ,int) ;
 int pr_warn_ratelimited (char*,struct dentry*,int,int,int,int ) ;

__attribute__((used)) static int ovl_d_to_fh(struct dentry *dentry, char *buf, int buflen)
{
 struct ovl_fh *fh = ((void*)0);
 int err, enc_lower;





 err = enc_lower = ovl_check_encode_origin(dentry);
 if (enc_lower < 0)
  goto fail;


 fh = ovl_encode_real_fh(enc_lower ? ovl_dentry_lower(dentry) :
    ovl_dentry_upper(dentry), !enc_lower);
 if (IS_ERR(fh))
  return PTR_ERR(fh);

 err = -EOVERFLOW;
 if (fh->len > buflen)
  goto fail;

 memcpy(buf, (char *)fh, fh->len);
 err = fh->len;

out:
 kfree(fh);
 return err;

fail:
 pr_warn_ratelimited("overlayfs: failed to encode file handle (%pd2, err=%i, buflen=%d, len=%d, type=%d)\n",
       dentry, err, buflen, fh ? (int)fh->len : 0,
       fh ? fh->type : 0);
 goto out;
}
