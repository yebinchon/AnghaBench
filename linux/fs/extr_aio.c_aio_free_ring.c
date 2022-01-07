
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct kioctx {int nr_pages; struct page** ring_pages; struct page** internal_pages; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int kfree (struct page**) ;
 int page_count (struct page*) ;
 int pr_debug (char*,int ,int,int ) ;
 int put_aio_ring_file (struct kioctx*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void aio_free_ring(struct kioctx *ctx)
{
 int i;




 put_aio_ring_file(ctx);

 for (i = 0; i < ctx->nr_pages; i++) {
  struct page *page;
  pr_debug("pid(%d) [%d] page->count=%d\n", current->pid, i,
    page_count(ctx->ring_pages[i]));
  page = ctx->ring_pages[i];
  if (!page)
   continue;
  ctx->ring_pages[i] = ((void*)0);
  put_page(page);
 }

 if (ctx->ring_pages && ctx->ring_pages != ctx->internal_pages) {
  kfree(ctx->ring_pages);
  ctx->ring_pages = ((void*)0);
 }
}
