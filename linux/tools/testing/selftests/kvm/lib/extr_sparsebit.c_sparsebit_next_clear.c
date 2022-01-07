
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {scalar_t__ idx; int mask; scalar_t__ num_after; } ;
typedef scalar_t__ sparsebit_idx_t ;


 scalar_t__ MASK_BITS ;
 struct node* node_find (struct sparsebit*,scalar_t__) ;
 scalar_t__ node_first_clear (struct node*,int ) ;
 struct node* node_next (struct sparsebit*,struct node*) ;

sparsebit_idx_t sparsebit_next_clear(struct sparsebit *s,
 sparsebit_idx_t prev)
{
 sparsebit_idx_t lowest_possible = prev + 1;
 sparsebit_idx_t idx;
 struct node *nodep1, *nodep2;


 if (lowest_possible == 0)
  return 0;





 nodep1 = node_find(s, lowest_possible);
 if (!nodep1)
  return lowest_possible;


 for (idx = lowest_possible - nodep1->idx; idx < MASK_BITS; idx++)
  if (!(nodep1->mask & (1 << idx)))
   return nodep1->idx + idx;






 nodep2 = node_next(s, nodep1);
 if (!nodep2)
  return nodep1->idx + MASK_BITS + nodep1->num_after;







 if (nodep1->idx + MASK_BITS + nodep1->num_after != nodep2->idx)
  return nodep1->idx + MASK_BITS + nodep1->num_after;
 return node_first_clear(nodep2, 0);
}
