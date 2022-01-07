
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {scalar_t__ data; int base_addr; } ;


 int PAGE_SHIFT ;
 int __free_pages (scalar_t__,int ) ;
 int order_base_2 (int const) ;
 int pcpu_free_chunk (struct pcpu_chunk*) ;
 int* pcpu_group_sizes ;
 int pcpu_stats_chunk_dealloc () ;
 int trace_percpu_destroy_chunk (int ) ;

__attribute__((used)) static void pcpu_destroy_chunk(struct pcpu_chunk *chunk)
{
 const int nr_pages = pcpu_group_sizes[0] >> PAGE_SHIFT;

 if (!chunk)
  return;

 pcpu_stats_chunk_dealloc();
 trace_percpu_destroy_chunk(chunk->base_addr);

 if (chunk->data)
  __free_pages(chunk->data, order_base_2(nr_pages));
 pcpu_free_chunk(chunk);
}
