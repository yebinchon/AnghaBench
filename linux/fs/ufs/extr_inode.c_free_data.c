
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct to_free {unsigned int count; scalar_t__ to; int inode; } ;


 int ufs_free_blocks (int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline void free_data(struct to_free *ctx, u64 from, unsigned count)
{
 if (ctx->count && ctx->to != from) {
  ufs_free_blocks(ctx->inode, ctx->to - ctx->count, ctx->count);
  ctx->count = 0;
 }
 ctx->count += count;
 ctx->to = from + count;
}
