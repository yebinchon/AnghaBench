
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap_page {int dummy; } ;
struct bio_vec {int bv_len; int bv_offset; struct page* bv_page; } ;


 int ClearPageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int iomap_read_finish (struct iomap_page*,struct page*) ;
 int iomap_set_range_uptodate (struct page*,int ,int ) ;
 struct iomap_page* to_iomap_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
iomap_read_page_end_io(struct bio_vec *bvec, int error)
{
 struct page *page = bvec->bv_page;
 struct iomap_page *iop = to_iomap_page(page);

 if (unlikely(error)) {
  ClearPageUptodate(page);
  SetPageError(page);
 } else {
  iomap_set_range_uptodate(page, bvec->bv_offset, bvec->bv_len);
 }

 iomap_read_finish(iop, page);
}
