
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; unsigned long* node; int mempool; } ;
struct btree_geo {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long* bval (struct btree_geo*,unsigned long*,int ) ;
 int getfill (struct btree_geo*,unsigned long*,int ) ;
 int mempool_free (unsigned long*,int ) ;

__attribute__((used)) static void btree_shrink(struct btree_head *head, struct btree_geo *geo)
{
 unsigned long *node;
 int fill;

 if (head->height <= 1)
  return;

 node = head->node;
 fill = getfill(geo, node, 0);
 BUG_ON(fill > 1);
 head->node = bval(geo, node, 0);
 head->height--;
 mempool_free(node, head->mempool);
}
