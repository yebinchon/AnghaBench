
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ovl_path {struct dentry* dentry; } ;
struct TYPE_5__ {int nfs_export; } ;
struct ovl_fs {TYPE_2__ config; } ;
struct ovl_fh {int dummy; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_6__ {int i_nlink; int i_mode; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ESTALE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int OVL_XATTR_ORIGIN ;
 int PTR_ERR (struct dentry*) ;
 int S_IFMT ;
 TYPE_3__* d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ hex2bin (int *,int ,size_t) ;
 int kfree (struct ovl_fh*) ;
 struct ovl_fh* kzalloc (size_t,int ) ;
 int ovl_check_fh_len (struct ovl_fh*,size_t) ;
 int ovl_check_origin_fh (struct ovl_fs*,struct ovl_fh*,int,struct dentry*,struct ovl_path**) ;
 scalar_t__ ovl_get_nlink (struct dentry*,struct dentry*,int ) ;
 struct dentry* ovl_index_upper (struct ovl_fs*,struct dentry*) ;
 scalar_t__ ovl_is_temp_index (struct dentry*) ;
 scalar_t__ ovl_is_whiteout (struct dentry*) ;
 int ovl_verify_fh (struct dentry*,int ,struct ovl_fh*) ;
 int pr_warn_ratelimited (char*,struct dentry*,int,int) ;

int ovl_verify_index(struct ovl_fs *ofs, struct dentry *index)
{
 struct ovl_fh *fh = ((void*)0);
 size_t len;
 struct ovl_path origin = { };
 struct ovl_path *stack = &origin;
 struct dentry *upper = ((void*)0);
 int err;

 if (!d_inode(index))
  return 0;


 err = -ESTALE;
 if (ovl_is_temp_index(index))
  goto fail;

 err = -EINVAL;
 if (index->d_name.len < sizeof(struct ovl_fh)*2)
  goto fail;

 err = -ENOMEM;
 len = index->d_name.len / 2;
 fh = kzalloc(len, GFP_KERNEL);
 if (!fh)
  goto fail;

 err = -EINVAL;
 if (hex2bin((u8 *)fh, index->d_name.name, len))
  goto fail;

 err = ovl_check_fh_len(fh, len);
 if (err)
  goto fail;






 if (ovl_is_whiteout(index))
  goto out;





 if (d_is_dir(index) && !ofs->config.nfs_export)
  goto out;
 upper = ovl_index_upper(ofs, index);
 if (IS_ERR_OR_NULL(upper)) {
  err = PTR_ERR(upper);






  if (err == -ESTALE)
   goto orphan;
  else if (!err)
   err = -ESTALE;
  goto fail;
 }

 err = ovl_verify_fh(upper, OVL_XATTR_ORIGIN, fh);
 dput(upper);
 if (err)
  goto fail;


 if (!d_is_dir(index) && d_inode(index)->i_nlink == 1) {
  err = ovl_check_origin_fh(ofs, fh, 0, index, &stack);
  if (err)
   goto fail;

  if (ovl_get_nlink(origin.dentry, index, 0) == 0)
   goto orphan;
 }

out:
 dput(origin.dentry);
 kfree(fh);
 return err;

fail:
 pr_warn_ratelimited("overlayfs: failed to verify index (%pd2, ftype=%x, err=%i)\n",
       index, d_inode(index)->i_mode & S_IFMT, err);
 goto out;

orphan:
 pr_warn_ratelimited("overlayfs: orphan index entry (%pd2, ftype=%x, nlink=%u)\n",
       index, d_inode(index)->i_mode & S_IFMT,
       d_inode(index)->i_nlink);
 err = -ENOENT;
 goto out;
}
