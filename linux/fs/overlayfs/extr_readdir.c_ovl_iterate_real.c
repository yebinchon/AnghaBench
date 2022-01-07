
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct TYPE_4__ {int pos; int actor; } ;
struct ovl_readdir_translate {TYPE_2__ ctx; int cache; int parent_ino; int fsid; scalar_t__ xinobits; struct dir_context* orig_ctx; } ;
struct ovl_layer {int fsid; } ;
struct ovl_dir_file {int realfile; } ;
struct kstat {scalar_t__ dev; int ino; } ;
struct file {struct path f_path; struct ovl_dir_file* private_data; } ;
struct dir_context {int pos; } ;
struct dentry {TYPE_1__* d_sb; struct dentry* d_parent; } ;
struct TYPE_3__ {scalar_t__ s_dev; } ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ OVL_TYPE_MERGE (int ) ;
 int PTR_ERR (int ) ;
 int STATX_INO ;
 int WARN_ON_ONCE (int) ;
 int iterate_dir (int ,TYPE_2__*) ;
 int ovl_cache_get_impure (struct path*) ;
 int ovl_fill_real ;
 scalar_t__ ovl_is_impure_dir (struct file*) ;
 struct ovl_layer* ovl_layer_lower (struct dentry*) ;
 int ovl_path_type (struct dentry*) ;
 scalar_t__ ovl_xino_bits (TYPE_1__*) ;
 int vfs_getattr (struct path*,struct kstat*,int ,int ) ;

__attribute__((used)) static int ovl_iterate_real(struct file *file, struct dir_context *ctx)
{
 int err;
 struct ovl_dir_file *od = file->private_data;
 struct dentry *dir = file->f_path.dentry;
 struct ovl_layer *lower_layer = ovl_layer_lower(dir);
 struct ovl_readdir_translate rdt = {
  .ctx.actor = ovl_fill_real,
  .orig_ctx = ctx,
  .xinobits = ovl_xino_bits(dir->d_sb),
 };

 if (rdt.xinobits && lower_layer)
  rdt.fsid = lower_layer->fsid;

 if (OVL_TYPE_MERGE(ovl_path_type(dir->d_parent))) {
  struct kstat stat;
  struct path statpath = file->f_path;

  statpath.dentry = dir->d_parent;
  err = vfs_getattr(&statpath, &stat, STATX_INO, 0);
  if (err)
   return err;

  WARN_ON_ONCE(dir->d_sb->s_dev != stat.dev);
  rdt.parent_ino = stat.ino;
 }

 if (ovl_is_impure_dir(file)) {
  rdt.cache = ovl_cache_get_impure(&file->f_path);
  if (IS_ERR(rdt.cache))
   return PTR_ERR(rdt.cache);
 }

 err = iterate_dir(od->realfile, &rdt.ctx);
 ctx->pos = rdt.ctx.pos;

 return err;
}
