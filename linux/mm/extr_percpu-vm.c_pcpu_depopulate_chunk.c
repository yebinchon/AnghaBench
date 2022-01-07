
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int pcpu_free_pages (struct pcpu_chunk*,struct page**,int,int) ;
 struct page** pcpu_get_pages () ;
 int pcpu_pre_unmap_flush (struct pcpu_chunk*,int,int) ;
 int pcpu_unmap_pages (struct pcpu_chunk*,struct page**,int,int) ;

__attribute__((used)) static void pcpu_depopulate_chunk(struct pcpu_chunk *chunk,
      int page_start, int page_end)
{
 struct page **pages;






 pages = pcpu_get_pages();
 BUG_ON(!pages);


 pcpu_pre_unmap_flush(chunk, page_start, page_end);

 pcpu_unmap_pages(chunk, pages, page_start, page_end);



 pcpu_free_pages(chunk, pages, page_start, page_end);
}
