
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_node_iter {int curnode; int node_map; } ;


 int memcpy (int ,unsigned long*,int) ;

__attribute__((used)) static inline void dlm_node_iter_init(unsigned long *map,
          struct dlm_node_iter *iter)
{
 memcpy(iter->node_map, map, sizeof(iter->node_map));
 iter->curnode = -1;
}
