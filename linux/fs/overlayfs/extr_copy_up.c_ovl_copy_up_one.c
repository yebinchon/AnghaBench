
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; } ;
struct TYPE_2__ {int mode; scalar_t__ size; } ;
struct ovl_copy_up_ctx {int link; struct path lowerpath; TYPE_1__ stat; TYPE_1__ pstat; int destname; int destdir; int metacopy; int workdir; struct dentry* dentry; struct dentry* parent; } ;
struct dentry {int d_name; } ;


 int AT_STATX_SYNC_AS_STAT ;
 int DEFINE_DELAYED_CALL (int ) ;
 int EROFS ;
 scalar_t__ IS_ERR (int ) ;
 int O_TRUNC ;
 int PTR_ERR (int ) ;
 int STATX_ATIME ;
 int STATX_BASIC_STATS ;
 int STATX_MTIME ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ WARN_ON (int) ;
 int do_delayed_call (int *) ;
 int done ;
 int ovl_copy_up_end (struct dentry*) ;
 int ovl_copy_up_meta_inode_data (struct ovl_copy_up_ctx*) ;
 int ovl_copy_up_start (struct dentry*,int) ;
 int ovl_dentry_has_upper_alias (struct dentry*) ;
 scalar_t__ ovl_dentry_needs_data_copy_up_locked (struct dentry*,int) ;
 int ovl_dentry_upper (struct dentry*) ;
 int ovl_do_copy_up (struct ovl_copy_up_ctx*) ;
 int ovl_link_up (struct ovl_copy_up_ctx*) ;
 int ovl_need_meta_copy_up (struct dentry*,int ,int) ;
 int ovl_path_lower (struct dentry*,struct path*) ;
 int ovl_path_upper (struct dentry*,struct path*) ;
 int ovl_workdir (struct dentry*) ;
 scalar_t__ unlikely (int) ;
 int vfs_get_link (int ,int *) ;
 int vfs_getattr (struct path*,TYPE_1__*,int,int ) ;

__attribute__((used)) static int ovl_copy_up_one(struct dentry *parent, struct dentry *dentry,
      int flags)
{
 int err;
 DEFINE_DELAYED_CALL(done);
 struct path parentpath;
 struct ovl_copy_up_ctx ctx = {
  .parent = parent,
  .dentry = dentry,
  .workdir = ovl_workdir(dentry),
 };

 if (WARN_ON(!ctx.workdir))
  return -EROFS;

 ovl_path_lower(dentry, &ctx.lowerpath);
 err = vfs_getattr(&ctx.lowerpath, &ctx.stat,
     STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
 if (err)
  return err;

 ctx.metacopy = ovl_need_meta_copy_up(dentry, ctx.stat.mode, flags);

 if (parent) {
  ovl_path_upper(parent, &parentpath);
  ctx.destdir = parentpath.dentry;
  ctx.destname = dentry->d_name;

  err = vfs_getattr(&parentpath, &ctx.pstat,
      STATX_ATIME | STATX_MTIME,
      AT_STATX_SYNC_AS_STAT);
  if (err)
   return err;
 }


 if (flags & O_TRUNC)
  ctx.stat.size = 0;

 if (S_ISLNK(ctx.stat.mode)) {
  ctx.link = vfs_get_link(ctx.lowerpath.dentry, &done);
  if (IS_ERR(ctx.link))
   return PTR_ERR(ctx.link);
 }

 err = ovl_copy_up_start(dentry, flags);

 if (unlikely(err)) {
  if (err > 0)
   err = 0;
 } else {
  if (!ovl_dentry_upper(dentry))
   err = ovl_do_copy_up(&ctx);
  if (!err && parent && !ovl_dentry_has_upper_alias(dentry))
   err = ovl_link_up(&ctx);
  if (!err && ovl_dentry_needs_data_copy_up_locked(dentry, flags))
   err = ovl_copy_up_meta_inode_data(&ctx);
  ovl_copy_up_end(dentry);
 }
 do_delayed_call(&done);

 return err;
}
