
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int ACTIVE_CACHELINE_MAX_OVERLAP ;
 int RADIX_TREE_MAX_TAGS ;
 int dma_active_cacheline ;
 int radix_tree_tag_clear (int *,int ,int) ;
 int radix_tree_tag_set (int *,int ,int) ;

__attribute__((used)) static int active_cacheline_set_overlap(phys_addr_t cln, int overlap)
{
 int i;

 if (overlap > ACTIVE_CACHELINE_MAX_OVERLAP || overlap < 0)
  return overlap;

 for (i = RADIX_TREE_MAX_TAGS - 1; i >= 0; i--)
  if (overlap & 1 << i)
   radix_tree_tag_set(&dma_active_cacheline, cln, i);
  else
   radix_tree_tag_clear(&dma_active_cacheline, cln, i);

 return overlap;
}
