
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {struct node* root; } ;
struct node {int idx; int num_after; int mask; struct node* right; struct node* parent; struct node* left; } ;
typedef int sparsebit_idx_t ;


 int MASK_BITS ;
 int abort () ;
 int assert (int) ;
 struct node* calloc (int,int) ;
 struct node* node_prev (struct sparsebit*,struct node*) ;
 int perror (char*) ;

__attribute__((used)) static struct node *node_add(struct sparsebit *s, sparsebit_idx_t idx)
{
 struct node *nodep, *parentp, *prev;


 nodep = calloc(1, sizeof(*nodep));
 if (!nodep) {
  perror("calloc");
  abort();
 }

 nodep->idx = idx & -MASK_BITS;


 if (!s->root) {
  s->root = nodep;
  return nodep;
 }





 parentp = s->root;
 while (1) {
  if (idx < parentp->idx) {
   if (!parentp->left) {
    parentp->left = nodep;
    nodep->parent = parentp;
    break;
   }
   parentp = parentp->left;
  } else {
   assert(idx > parentp->idx + MASK_BITS + parentp->num_after - 1);
   if (!parentp->right) {
    parentp->right = nodep;
    nodep->parent = parentp;
    break;
   }
   parentp = parentp->right;
  }
 }






 prev = node_prev(s, nodep);
 while (prev && prev->idx + MASK_BITS + prev->num_after - 1 >= nodep->idx) {
  unsigned int n1 = (prev->idx + MASK_BITS + prev->num_after - 1)
   - nodep->idx;
  assert(prev->num_after > 0);
  assert(n1 < MASK_BITS);
  assert(!(nodep->mask & (1 << n1)));
  nodep->mask |= (1 << n1);
  prev->num_after--;
 }

 return nodep;
}
