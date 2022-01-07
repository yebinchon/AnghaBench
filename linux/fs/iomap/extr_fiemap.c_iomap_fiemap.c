
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iomap_ops {int dummy; } ;
struct inode {int i_mapping; } ;
struct fiemap_extent_info {int fi_flags; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct fiemap_ctx {TYPE_1__ prev; struct fiemap_extent_info* fi; } ;
typedef int loff_t ;
typedef int ctx ;


 int ENOENT ;
 int FIEMAP_EXTENT_LAST ;
 int FIEMAP_FLAG_SYNC ;
 scalar_t__ IOMAP_HOLE ;
 int IOMAP_REPORT ;
 int fiemap_check_flags (struct fiemap_extent_info*,int) ;
 int filemap_write_and_wait (int ) ;
 int iomap_apply (struct inode*,int,int,int ,struct iomap_ops const*,struct fiemap_ctx*,int ) ;
 int iomap_fiemap_actor ;
 int iomap_to_fiemap (struct fiemap_extent_info*,TYPE_1__*,int ) ;
 int memset (struct fiemap_ctx*,int ,int) ;

int iomap_fiemap(struct inode *inode, struct fiemap_extent_info *fi,
  loff_t start, loff_t len, const struct iomap_ops *ops)
{
 struct fiemap_ctx ctx;
 loff_t ret;

 memset(&ctx, 0, sizeof(ctx));
 ctx.fi = fi;
 ctx.prev.type = IOMAP_HOLE;

 ret = fiemap_check_flags(fi, FIEMAP_FLAG_SYNC);
 if (ret)
  return ret;

 if (fi->fi_flags & FIEMAP_FLAG_SYNC) {
  ret = filemap_write_and_wait(inode->i_mapping);
  if (ret)
   return ret;
 }

 while (len > 0) {
  ret = iomap_apply(inode, start, len, IOMAP_REPORT, ops, &ctx,
    iomap_fiemap_actor);

  if (ret == -ENOENT)
   break;
  if (ret < 0)
   return ret;
  if (ret == 0)
   break;

  start += ret;
  len -= ret;
 }

 if (ctx.prev.type != IOMAP_HOLE) {
  ret = iomap_to_fiemap(fi, &ctx.prev, FIEMAP_EXTENT_LAST);
  if (ret < 0)
   return ret;
 }

 return 0;
}
