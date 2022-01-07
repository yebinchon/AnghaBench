
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_readpage_ctx {int cur_page_in_bio; int * cur_page; int pages; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int * iomap_next_page (struct inode*,int ,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ iomap_readpage_actor (struct inode*,scalar_t__,scalar_t__,struct iomap_readpage_ctx*,struct iomap*) ;
 scalar_t__ offset_in_page (scalar_t__) ;
 int put_page (int *) ;
 int unlock_page (int *) ;

__attribute__((used)) static loff_t
iomap_readpages_actor(struct inode *inode, loff_t pos, loff_t length,
  void *data, struct iomap *iomap)
{
 struct iomap_readpage_ctx *ctx = data;
 loff_t done, ret;

 for (done = 0; done < length; done += ret) {
  if (ctx->cur_page && offset_in_page(pos + done) == 0) {
   if (!ctx->cur_page_in_bio)
    unlock_page(ctx->cur_page);
   put_page(ctx->cur_page);
   ctx->cur_page = ((void*)0);
  }
  if (!ctx->cur_page) {
   ctx->cur_page = iomap_next_page(inode, ctx->pages,
     pos, length, &done);
   if (!ctx->cur_page)
    break;
   ctx->cur_page_in_bio = 0;
  }
  ret = iomap_readpage_actor(inode, pos + done, length - done,
    ctx, iomap);
 }

 return done;
}
