
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {struct node* root; } ;
struct node {struct node* left; } ;



__attribute__((used)) static struct node *node_first(struct sparsebit *s)
{
 struct node *nodep;

 for (nodep = s->root; nodep && nodep->left; nodep = nodep->left)
  ;

 return nodep;
}
