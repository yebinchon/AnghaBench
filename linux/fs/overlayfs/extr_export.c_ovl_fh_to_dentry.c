
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ovl_fh {unsigned int flags; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 unsigned int OVL_FH_FLAG_PATH_UPPER ;
 int OVL_FILEID ;
 int PTR_ERR (struct dentry*) ;
 int ovl_check_fh_len (struct ovl_fh*,int) ;
 struct dentry* ovl_lower_fh_to_d (struct super_block*,struct ovl_fh*) ;
 struct dentry* ovl_upper_fh_to_d (struct super_block*,struct ovl_fh*) ;
 int pr_warn_ratelimited (char*,int,int,unsigned int,int) ;

__attribute__((used)) static struct dentry *ovl_fh_to_dentry(struct super_block *sb, struct fid *fid,
           int fh_len, int fh_type)
{
 struct dentry *dentry = ((void*)0);
 struct ovl_fh *fh = (struct ovl_fh *) fid;
 int len = fh_len << 2;
 unsigned int flags = 0;
 int err;

 err = -EINVAL;
 if (fh_type != OVL_FILEID)
  goto out_err;

 err = ovl_check_fh_len(fh, len);
 if (err)
  goto out_err;

 flags = fh->flags;
 dentry = (flags & OVL_FH_FLAG_PATH_UPPER) ?
   ovl_upper_fh_to_d(sb, fh) :
   ovl_lower_fh_to_d(sb, fh);
 err = PTR_ERR(dentry);
 if (IS_ERR(dentry) && err != -ESTALE)
  goto out_err;

 return dentry;

out_err:
 pr_warn_ratelimited("overlayfs: failed to decode file handle (len=%d, type=%d, flags=%x, err=%i)\n",
       len, fh_type, flags, err);
 return ERR_PTR(err);
}
