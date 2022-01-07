
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mpage_readpage_args {int nr_pages; scalar_t__ bio; int get_block; struct page* page; } ;
typedef int get_block_t ;


 int REQ_OP_READ ;
 scalar_t__ do_mpage_readpage (struct mpage_readpage_args*) ;
 int mpage_bio_submit (int ,int ,scalar_t__) ;

int mpage_readpage(struct page *page, get_block_t get_block)
{
 struct mpage_readpage_args args = {
  .page = page,
  .nr_pages = 1,
  .get_block = get_block,
 };

 args.bio = do_mpage_readpage(&args);
 if (args.bio)
  mpage_bio_submit(REQ_OP_READ, 0, args.bio);
 return 0;
}
