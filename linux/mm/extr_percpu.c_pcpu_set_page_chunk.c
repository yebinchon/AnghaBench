
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int dummy; } ;
struct page {unsigned long index; } ;



__attribute__((used)) static void pcpu_set_page_chunk(struct page *page, struct pcpu_chunk *pcpu)
{
 page->index = (unsigned long)pcpu;
}
