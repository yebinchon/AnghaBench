
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {struct node* parent; struct node* right; struct node* left; } ;



__attribute__((used)) static struct node *node_next(struct sparsebit *s, struct node *np)
{
 struct node *nodep = np;





 if (nodep->right) {
  for (nodep = nodep->right; nodep->left; nodep = nodep->left)
   ;
  return nodep;
 }





 while (nodep->parent && nodep == nodep->parent->right)
  nodep = nodep->parent;

 return nodep->parent;
}
