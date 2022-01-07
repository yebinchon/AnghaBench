
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {struct node* parent; struct node* left; struct node* right; } ;



__attribute__((used)) static struct node *node_prev(struct sparsebit *s, struct node *np)
{
 struct node *nodep = np;





 if (nodep->left) {
  for (nodep = nodep->left; nodep->right; nodep = nodep->right)
   ;
  return (struct node *) nodep;
 }





 while (nodep->parent && nodep == nodep->parent->left)
  nodep = nodep->parent;

 return (struct node *) nodep->parent;
}
