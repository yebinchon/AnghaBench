
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int RADIX_TREE_MAX_TAGS ;
 int dma_active_cacheline ;
 scalar_t__ radix_tree_tag_get (int *,int ,int) ;

__attribute__((used)) static int active_cacheline_read_overlap(phys_addr_t cln)
{
 int overlap = 0, i;

 for (i = RADIX_TREE_MAX_TAGS - 1; i >= 0; i--)
  if (radix_tree_tag_get(&dma_active_cacheline, cln, i))
   overlap |= 1 << i;
 return overlap;
}
