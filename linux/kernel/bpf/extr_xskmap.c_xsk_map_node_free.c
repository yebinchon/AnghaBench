
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map_node {int map; } ;


 int kfree (struct xsk_map_node*) ;
 int xsk_map_put (int ) ;

__attribute__((used)) static void xsk_map_node_free(struct xsk_map_node *node)
{
 xsk_map_put(node->map);
 kfree(node);
}
