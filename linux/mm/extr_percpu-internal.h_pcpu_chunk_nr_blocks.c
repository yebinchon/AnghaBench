
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int nr_pages; } ;


 int PAGE_SIZE ;
 int PCPU_BITMAP_BLOCK_SIZE ;

__attribute__((used)) static inline int pcpu_chunk_nr_blocks(struct pcpu_chunk *chunk)
{
 return chunk->nr_pages * PAGE_SIZE / PCPU_BITMAP_BLOCK_SIZE;
}
