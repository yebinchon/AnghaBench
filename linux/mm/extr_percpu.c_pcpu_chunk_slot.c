
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_block_md {int contig_hint; } ;
struct pcpu_chunk {int free_bytes; struct pcpu_block_md chunk_md; } ;


 int PCPU_MIN_ALLOC_SIZE ;
 int pcpu_size_to_slot (int) ;

__attribute__((used)) static int pcpu_chunk_slot(const struct pcpu_chunk *chunk)
{
 const struct pcpu_block_md *chunk_md = &chunk->chunk_md;

 if (chunk->free_bytes < PCPU_MIN_ALLOC_SIZE ||
     chunk_md->contig_hint == 0)
  return 0;

 return pcpu_size_to_slot(chunk_md->contig_hint * PCPU_MIN_ALLOC_SIZE);
}
