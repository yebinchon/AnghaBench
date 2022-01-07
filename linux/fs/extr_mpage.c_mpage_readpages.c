
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; int lru; int flags; } ;
struct mpage_readpage_args {int is_readahead; unsigned int nr_pages; scalar_t__ bio; struct page* page; int get_block; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int get_block_t ;


 int BUG_ON (int) ;
 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 scalar_t__ do_mpage_readpage (struct mpage_readpage_args*) ;
 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 struct page* lru_to_page (struct list_head*) ;
 int mpage_bio_submit (int ,int ,scalar_t__) ;
 int prefetchw (int *) ;
 int put_page (struct page*) ;
 int readahead_gfp_mask (struct address_space*) ;

int
mpage_readpages(struct address_space *mapping, struct list_head *pages,
    unsigned nr_pages, get_block_t get_block)
{
 struct mpage_readpage_args args = {
  .get_block = get_block,
  .is_readahead = 1,
 };
 unsigned page_idx;

 for (page_idx = 0; page_idx < nr_pages; page_idx++) {
  struct page *page = lru_to_page(pages);

  prefetchw(&page->flags);
  list_del(&page->lru);
  if (!add_to_page_cache_lru(page, mapping,
     page->index,
     readahead_gfp_mask(mapping))) {
   args.page = page;
   args.nr_pages = nr_pages - page_idx;
   args.bio = do_mpage_readpage(&args);
  }
  put_page(page);
 }
 BUG_ON(!list_empty(pages));
 if (args.bio)
  mpage_bio_submit(REQ_OP_READ, REQ_RAHEAD, args.bio);
 return 0;
}
