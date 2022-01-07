
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {scalar_t__ idx; scalar_t__ num_after; int mask; } ;
typedef scalar_t__ sparsebit_idx_t ;
typedef int mask_t ;


 scalar_t__ MASK_BITS ;
 int assert (int) ;
 struct node* node_first (struct sparsebit*) ;
 scalar_t__ node_first_clear (struct node*,int ) ;
 struct node* node_next (struct sparsebit*,struct node*) ;
 int sparsebit_any_clear (struct sparsebit*) ;

sparsebit_idx_t sparsebit_first_clear(struct sparsebit *s)
{
 struct node *nodep1, *nodep2;


 assert(sparsebit_any_clear(s));


 nodep1 = node_first(s);
 if (!nodep1 || nodep1->idx > 0)
  return 0;


 if (nodep1->mask != ~(mask_t) 0)
  return node_first_clear(nodep1, 0);






 nodep2 = node_next(s, nodep1);
 if (!nodep2) {




  assert(nodep1->mask == ~(mask_t) 0);
  assert(nodep1->idx + MASK_BITS + nodep1->num_after != (sparsebit_idx_t) 0);
  return nodep1->idx + MASK_BITS + nodep1->num_after;
 }







 if (nodep1->idx + MASK_BITS + nodep1->num_after != nodep2->idx)
  return nodep1->idx + MASK_BITS + nodep1->num_after;
 return node_first_clear(nodep2, 0);
}
