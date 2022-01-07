
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {struct node* root; } ;
struct node {int idx; int num_after; int mask; struct node* right; struct node* left; } ;
typedef scalar_t__ sparsebit_idx_t ;


 int MASK_BITS ;
 int assert (int) ;
 scalar_t__ node_first_set (struct node*,scalar_t__) ;
 struct node* node_next (struct sparsebit*,struct node*) ;

sparsebit_idx_t sparsebit_next_set(struct sparsebit *s,
 sparsebit_idx_t prev)
{
 sparsebit_idx_t lowest_possible = prev + 1;
 sparsebit_idx_t start;
 struct node *nodep;


 if (lowest_possible == 0)
  return 0;





 struct node *candidate = ((void*)0);


 bool contains = 0;






 for (nodep = s->root; nodep;) {
  if ((nodep->idx + MASK_BITS + nodep->num_after - 1)
   >= lowest_possible) {
   candidate = nodep;
   if (candidate->idx <= lowest_possible) {
    contains = 1;
    break;
   }
   nodep = nodep->left;
  } else {
   nodep = nodep->right;
  }
 }
 if (!candidate)
  return 0;

 assert(candidate->mask != 0);


 if (!contains) {





  assert(candidate->idx > lowest_possible);

  return node_first_set(candidate, 0);
 }
 start = lowest_possible - candidate->idx;

 if (start < MASK_BITS && candidate->mask >= (1 << start))
  return node_first_set(candidate, start);

 if (candidate->num_after) {
  sparsebit_idx_t first_num_after_idx = candidate->idx + MASK_BITS;

  return lowest_possible < first_num_after_idx
   ? first_num_after_idx : lowest_possible;
 }
 candidate = node_next(s, candidate);
 if (!candidate)
  return 0;

 return node_first_set(candidate, 0);
}
