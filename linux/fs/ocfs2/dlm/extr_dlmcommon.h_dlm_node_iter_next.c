
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_node_iter {int curnode; int node_map; } ;


 int ENOENT ;
 int O2NM_MAX_NODES ;
 int find_next_bit (int ,int,int) ;

__attribute__((used)) static inline int dlm_node_iter_next(struct dlm_node_iter *iter)
{
 int bit;
 bit = find_next_bit(iter->node_map, O2NM_MAX_NODES, iter->curnode+1);
 if (bit >= O2NM_MAX_NODES) {
  iter->curnode = O2NM_MAX_NODES;
  return -ENOENT;
 }
 iter->curnode = bit;
 return bit;
}
