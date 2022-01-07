
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int upper_mnt; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;


 int EACCES ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ovl_decode_real_fh (struct ovl_fh*,int ,int) ;
 struct dentry* ovl_get_dentry (struct super_block*,struct dentry*,int *,int *) ;

__attribute__((used)) static struct dentry *ovl_upper_fh_to_d(struct super_block *sb,
     struct ovl_fh *fh)
{
 struct ovl_fs *ofs = sb->s_fs_info;
 struct dentry *dentry;
 struct dentry *upper;

 if (!ofs->upper_mnt)
  return ERR_PTR(-EACCES);

 upper = ovl_decode_real_fh(fh, ofs->upper_mnt, 1);
 if (IS_ERR_OR_NULL(upper))
  return upper;

 dentry = ovl_get_dentry(sb, upper, ((void*)0), ((void*)0));
 dput(upper);

 return dentry;
}
