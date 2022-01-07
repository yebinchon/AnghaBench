
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int immutable; } ;
struct page {int dummy; } ;


 int WARN_ON (int ) ;
 scalar_t__ pcpu_chunk_addr (struct pcpu_chunk*,unsigned int,int) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static struct page *pcpu_chunk_page(struct pcpu_chunk *chunk,
        unsigned int cpu, int page_idx)
{

 WARN_ON(chunk->immutable);

 return vmalloc_to_page((void *)pcpu_chunk_addr(chunk, cpu, page_idx));
}
