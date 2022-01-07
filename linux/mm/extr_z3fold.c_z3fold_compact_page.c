
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {scalar_t__ middle_chunks; scalar_t__ first_chunks; scalar_t__ last_chunks; scalar_t__ start_middle; int first_num; } ;
struct page {int private; } ;


 scalar_t__ BIG_CHUNK_GAP ;
 int MIDDLE_CHUNK_MAPPED ;
 int PageIsolated (struct page*) ;
 scalar_t__ TOTAL_CHUNKS ;
 scalar_t__ ZHDR_CHUNKS ;
 int mchunk_memmove (struct z3fold_header*,unsigned short) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 struct page* virt_to_page (struct z3fold_header*) ;

__attribute__((used)) static int z3fold_compact_page(struct z3fold_header *zhdr)
{
 struct page *page = virt_to_page(zhdr);

 if (test_bit(MIDDLE_CHUNK_MAPPED, &page->private))
  return 0;

 if (unlikely(PageIsolated(page)))
  return 0;

 if (zhdr->middle_chunks == 0)
  return 0;

 if (zhdr->first_chunks == 0 && zhdr->last_chunks == 0) {

  mchunk_memmove(zhdr, ZHDR_CHUNKS);
  zhdr->first_chunks = zhdr->middle_chunks;
  zhdr->middle_chunks = 0;
  zhdr->start_middle = 0;
  zhdr->first_num++;
  return 1;
 }





 if (zhdr->first_chunks != 0 && zhdr->last_chunks == 0 &&
     zhdr->start_middle - (zhdr->first_chunks + ZHDR_CHUNKS) >=
   BIG_CHUNK_GAP) {
  mchunk_memmove(zhdr, zhdr->first_chunks + ZHDR_CHUNKS);
  zhdr->start_middle = zhdr->first_chunks + ZHDR_CHUNKS;
  return 1;
 } else if (zhdr->last_chunks != 0 && zhdr->first_chunks == 0 &&
     TOTAL_CHUNKS - (zhdr->last_chunks + zhdr->start_middle
     + zhdr->middle_chunks) >=
   BIG_CHUNK_GAP) {
  unsigned short new_start = TOTAL_CHUNKS - zhdr->last_chunks -
   zhdr->middle_chunks;
  mchunk_memmove(zhdr, new_start);
  zhdr->start_middle = new_start;
  return 1;
 }

 return 0;
}
