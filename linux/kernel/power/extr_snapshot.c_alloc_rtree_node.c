
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtree_node {int list; int data; } ;
struct list_head {int dummy; } ;
struct chain_allocator {int dummy; } ;
typedef int gfp_t ;


 struct rtree_node* chain_alloc (struct chain_allocator*,int) ;
 int get_image_page (int ,int) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static struct rtree_node *alloc_rtree_node(gfp_t gfp_mask, int safe_needed,
        struct chain_allocator *ca,
        struct list_head *list)
{
 struct rtree_node *node;

 node = chain_alloc(ca, sizeof(struct rtree_node));
 if (!node)
  return ((void*)0);

 node->data = get_image_page(gfp_mask, safe_needed);
 if (!node->data)
  return ((void*)0);

 list_add_tail(&node->list, list);

 return node;
}
