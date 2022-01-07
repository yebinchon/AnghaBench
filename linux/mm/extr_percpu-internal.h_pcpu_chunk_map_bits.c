
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int nr_pages; } ;


 int pcpu_nr_pages_to_map_bits (int ) ;

__attribute__((used)) static inline int pcpu_chunk_map_bits(struct pcpu_chunk *chunk)
{
 return pcpu_nr_pages_to_map_bits(chunk->nr_pages);
}
