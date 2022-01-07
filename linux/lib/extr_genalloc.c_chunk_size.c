
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool_chunk {size_t end_addr; size_t start_addr; } ;



__attribute__((used)) static inline size_t chunk_size(const struct gen_pool_chunk *chunk)
{
 return chunk->end_addr - chunk->start_addr + 1;
}
