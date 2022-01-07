
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {unsigned int* maps; } ;


 int BUG_ON (int) ;
 unsigned int EBITMAP_BIT ;
 unsigned int EBITMAP_NODE_INDEX (struct ebitmap_node*,unsigned int) ;
 unsigned int EBITMAP_NODE_OFFSET (struct ebitmap_node*,unsigned int) ;
 unsigned int EBITMAP_UNIT_NUMS ;

__attribute__((used)) static inline void ebitmap_node_clr_bit(struct ebitmap_node *n,
     unsigned int bit)
{
 unsigned int index = EBITMAP_NODE_INDEX(n, bit);
 unsigned int ofs = EBITMAP_NODE_OFFSET(n, bit);

 BUG_ON(index >= EBITMAP_UNIT_NUMS);
 n->maps[index] &= ~(EBITMAP_BIT << ofs);
}
