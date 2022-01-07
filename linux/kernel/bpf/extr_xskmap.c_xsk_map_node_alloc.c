
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map_node {struct xdp_sock** map_entry; struct xsk_map* map; } ;
struct xsk_map {int dummy; } ;
struct xdp_sock {int dummy; } ;


 int ENOMEM ;
 struct xsk_map_node* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 int kfree (struct xsk_map_node*) ;
 struct xsk_map_node* kzalloc (int,int) ;
 int xsk_map_inc (struct xsk_map*) ;

__attribute__((used)) static struct xsk_map_node *xsk_map_node_alloc(struct xsk_map *map,
            struct xdp_sock **map_entry)
{
 struct xsk_map_node *node;
 int err;

 node = kzalloc(sizeof(*node), GFP_ATOMIC | __GFP_NOWARN);
 if (!node)
  return ERR_PTR(-ENOMEM);

 err = xsk_map_inc(map);
 if (err) {
  kfree(node);
  return ERR_PTR(err);
 }

 node->map = map;
 node->map_entry = map_entry;
 return node;
}
