
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int dummy; } ;


 int flush_cache_vmap (int ,int ) ;
 int pcpu_chunk_addr (struct pcpu_chunk*,int ,int) ;
 int pcpu_high_unit_cpu ;
 int pcpu_low_unit_cpu ;

__attribute__((used)) static void pcpu_post_map_flush(struct pcpu_chunk *chunk,
    int page_start, int page_end)
{
 flush_cache_vmap(
  pcpu_chunk_addr(chunk, pcpu_low_unit_cpu, page_start),
  pcpu_chunk_addr(chunk, pcpu_high_unit_cpu, page_end));
}
