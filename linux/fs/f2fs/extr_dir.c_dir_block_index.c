
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int bucket_blocks (unsigned int) ;
 unsigned long dir_buckets (unsigned long,int) ;

__attribute__((used)) static unsigned long dir_block_index(unsigned int level,
    int dir_level, unsigned int idx)
{
 unsigned long i;
 unsigned long bidx = 0;

 for (i = 0; i < level; i++)
  bidx += dir_buckets(i, dir_level) * bucket_blocks(i);
 bidx += idx * bucket_blocks(level);
 return bidx;
}
