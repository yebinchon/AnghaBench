
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int start_offset; int nr_pages; void* end_offset; void* base_addr; } ;


 int PAGE_SIZE ;

__attribute__((used)) static bool pcpu_addr_in_chunk(struct pcpu_chunk *chunk, void *addr)
{
 void *start_addr, *end_addr;

 if (!chunk)
  return 0;

 start_addr = chunk->base_addr + chunk->start_offset;
 end_addr = chunk->base_addr + chunk->nr_pages * PAGE_SIZE -
     chunk->end_offset;

 return addr >= start_addr && addr < end_addr;
}
