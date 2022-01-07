
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {scalar_t__ type; } ;
struct inode {int dummy; } ;
struct fiemap_ctx {struct iomap prev; int fi; } ;
typedef int loff_t ;


 scalar_t__ IOMAP_HOLE ;
 int iomap_to_fiemap (int ,struct iomap*,int ) ;

__attribute__((used)) static loff_t
iomap_fiemap_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
  struct iomap *iomap)
{
 struct fiemap_ctx *ctx = data;
 loff_t ret = length;

 if (iomap->type == IOMAP_HOLE)
  return length;

 ret = iomap_to_fiemap(ctx->fi, &ctx->prev, 0);
 ctx->prev = *iomap;
 switch (ret) {
 case 0:
  return length;
 case 1:
  return 0;
 default:
  return ret;
 }
}
