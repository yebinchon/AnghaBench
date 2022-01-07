
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_node {struct genradix_node** children; } ;


 unsigned int GENRADIX_ARY ;
 int genradix_free_node (struct genradix_node*) ;

__attribute__((used)) static void genradix_free_recurse(struct genradix_node *n, unsigned level)
{
 if (level) {
  unsigned i;

  for (i = 0; i < GENRADIX_ARY; i++)
   if (n->children[i])
    genradix_free_recurse(n->children[i], level - 1);
 }

 genradix_free_node(n);
}
