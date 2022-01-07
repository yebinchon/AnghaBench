
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_path {struct dentry* dentry; struct ovl_layer* layer; } ;
struct ovl_layer {int mnt; } ;
struct ovl_fs {int upper_mnt; } ;
struct dentry {int d_flags; } ;


 int DCACHE_DISCONNECTED ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int d_is_dir (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 struct dentry* ovl_lookup_real (struct super_block*,struct dentry*,struct ovl_layer*) ;
 struct dentry* ovl_obtain_alias (struct super_block*,struct dentry*,struct ovl_path*,struct dentry*) ;

__attribute__((used)) static struct dentry *ovl_get_dentry(struct super_block *sb,
         struct dentry *upper,
         struct ovl_path *lowerpath,
         struct dentry *index)
{
 struct ovl_fs *ofs = sb->s_fs_info;
 struct ovl_layer upper_layer = { .mnt = ofs->upper_mnt };
 struct ovl_layer *layer = upper ? &upper_layer : lowerpath->layer;
 struct dentry *real = upper ?: (index ?: lowerpath->dentry);





 if (!d_is_dir(real))
  return ovl_obtain_alias(sb, upper, lowerpath, index);


 if ((real->d_flags & DCACHE_DISCONNECTED) || d_unhashed(real))
  return ERR_PTR(-ENOENT);





 return ovl_lookup_real(sb, real, layer);
}
