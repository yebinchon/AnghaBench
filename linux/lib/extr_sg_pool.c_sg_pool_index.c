
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned short SG_CHUNK_SIZE ;
 int get_count_order (unsigned short) ;

__attribute__((used)) static inline unsigned int sg_pool_index(unsigned short nents)
{
 unsigned int index;

 BUG_ON(nents > SG_CHUNK_SIZE);

 if (nents <= 8)
  index = 0;
 else
  index = get_count_order(nents) - 3;

 return index;
}
