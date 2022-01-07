
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {struct node* root; } ;
struct node {int idx; int num_after; struct node* right; struct node* left; } ;
typedef int sparsebit_idx_t ;


 int MASK_BITS ;

__attribute__((used)) static struct node *node_find(struct sparsebit *s, sparsebit_idx_t idx)
{
 struct node *nodep;


 for (nodep = s->root; nodep;
      nodep = nodep->idx > idx ? nodep->left : nodep->right) {
  if (idx >= nodep->idx &&
      idx <= nodep->idx + MASK_BITS + nodep->num_after - 1)
   break;
 }

 return nodep;
}
