
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {unsigned long* node; int height; } ;
struct btree_geo {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int bkey (struct btree_geo*,unsigned long*,int) ;
 unsigned long* btree_node_alloc (struct btree_head*,int ) ;
 int getfill (struct btree_geo*,unsigned long*,int ) ;
 int setkey (struct btree_geo*,unsigned long*,int ,int ) ;
 int setval (struct btree_geo*,unsigned long*,int ,unsigned long*) ;

__attribute__((used)) static int btree_grow(struct btree_head *head, struct btree_geo *geo,
        gfp_t gfp)
{
 unsigned long *node;
 int fill;

 node = btree_node_alloc(head, gfp);
 if (!node)
  return -ENOMEM;
 if (head->node) {
  fill = getfill(geo, head->node, 0);
  setkey(geo, node, 0, bkey(geo, head->node, fill - 1));
  setval(geo, node, 0, head->node);
 }
 head->node = node;
 head->height++;
 return 0;
}
