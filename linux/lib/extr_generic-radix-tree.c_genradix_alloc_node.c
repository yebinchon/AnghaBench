
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_node {int dummy; } ;
typedef int gfp_t ;


 int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_page (int) ;
 int kmemleak_alloc (struct genradix_node*,int ,int,int) ;

__attribute__((used)) static inline struct genradix_node *genradix_alloc_node(gfp_t gfp_mask)
{
 struct genradix_node *node;

 node = (struct genradix_node *)__get_free_page(gfp_mask|__GFP_ZERO);






 kmemleak_alloc(node, PAGE_SIZE, 1, gfp_mask);
 return node;
}
