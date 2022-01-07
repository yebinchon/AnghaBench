
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fh {int len; } ;
struct inode {int i_ino; } ;
struct dentry {int dummy; } ;


 int ENODATA ;
 scalar_t__ IS_ERR (struct ovl_fh*) ;
 int PTR_ERR (struct ovl_fh*) ;
 struct inode* d_inode (struct dentry*) ;
 int kfree (struct ovl_fh*) ;
 int ovl_do_setxattr (struct dentry*,char const*,struct ovl_fh*,int ,int ) ;
 struct ovl_fh* ovl_encode_real_fh (struct dentry*,int) ;
 int ovl_verify_fh (struct dentry*,char const*,struct ovl_fh*) ;
 int pr_warn_ratelimited (char*,char*,struct dentry*,int ,int) ;

int ovl_verify_set_fh(struct dentry *dentry, const char *name,
        struct dentry *real, bool is_upper, bool set)
{
 struct inode *inode;
 struct ovl_fh *fh;
 int err;

 fh = ovl_encode_real_fh(real, is_upper);
 err = PTR_ERR(fh);
 if (IS_ERR(fh)) {
  fh = ((void*)0);
  goto fail;
 }

 err = ovl_verify_fh(dentry, name, fh);
 if (set && err == -ENODATA)
  err = ovl_do_setxattr(dentry, name, fh, fh->len, 0);
 if (err)
  goto fail;

out:
 kfree(fh);
 return err;

fail:
 inode = d_inode(real);
 pr_warn_ratelimited("overlayfs: failed to verify %s (%pd2, ino=%lu, err=%i)\n",
       is_upper ? "upper" : "origin", real,
       inode ? inode->i_ino : 0, err);
 goto out;
}
