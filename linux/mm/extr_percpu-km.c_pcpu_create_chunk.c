
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int base_addr; struct page* data; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int PAGE_SHIFT ;
 struct page* alloc_pages (int ,int ) ;
 int nth_page (struct page*,int) ;
 int order_base_2 (int const) ;
 int page_address (struct page*) ;
 struct pcpu_chunk* pcpu_alloc_chunk (int ) ;
 int pcpu_chunk_populated (struct pcpu_chunk*,int ,int const) ;
 int pcpu_free_chunk (struct pcpu_chunk*) ;
 int* pcpu_group_sizes ;
 int pcpu_lock ;
 int pcpu_set_page_chunk (int ,struct pcpu_chunk*) ;
 int pcpu_stats_chunk_alloc () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_percpu_create_chunk (int ) ;

__attribute__((used)) static struct pcpu_chunk *pcpu_create_chunk(gfp_t gfp)
{
 const int nr_pages = pcpu_group_sizes[0] >> PAGE_SHIFT;
 struct pcpu_chunk *chunk;
 struct page *pages;
 unsigned long flags;
 int i;

 chunk = pcpu_alloc_chunk(gfp);
 if (!chunk)
  return ((void*)0);

 pages = alloc_pages(gfp, order_base_2(nr_pages));
 if (!pages) {
  pcpu_free_chunk(chunk);
  return ((void*)0);
 }

 for (i = 0; i < nr_pages; i++)
  pcpu_set_page_chunk(nth_page(pages, i), chunk);

 chunk->data = pages;
 chunk->base_addr = page_address(pages);

 spin_lock_irqsave(&pcpu_lock, flags);
 pcpu_chunk_populated(chunk, 0, nr_pages);
 spin_unlock_irqrestore(&pcpu_lock, flags);

 pcpu_stats_chunk_alloc();
 trace_percpu_create_chunk(chunk->base_addr);

 return chunk;
}
