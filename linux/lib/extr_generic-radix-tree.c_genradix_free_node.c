
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_node {int dummy; } ;


 int free_page (unsigned long) ;
 int kmemleak_free (struct genradix_node*) ;

__attribute__((used)) static inline void genradix_free_node(struct genradix_node *node)
{
 kmemleak_free(node);
 free_page((unsigned long)node);
}
