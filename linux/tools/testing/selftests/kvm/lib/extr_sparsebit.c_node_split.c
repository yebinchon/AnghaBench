
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {int idx; int num_after; int mask; } ;
typedef int sparsebit_num_t ;
typedef int sparsebit_idx_t ;
typedef int mask_t ;


 int MASK_BITS ;
 int assert (int) ;
 struct node* node_add (struct sparsebit*,int) ;
 struct node* node_find (struct sparsebit*,int) ;

__attribute__((used)) static struct node *node_split(struct sparsebit *s, sparsebit_idx_t idx)
{
 struct node *nodep1, *nodep2;
 sparsebit_idx_t offset;
 sparsebit_num_t orig_num_after;

 assert(!(idx % MASK_BITS));





 nodep1 = node_find(s, idx);
 if (!nodep1)
  return node_add(s, idx);





 if (nodep1->idx == idx)
  return nodep1;
 offset = idx - (nodep1->idx + MASK_BITS);
 orig_num_after = nodep1->num_after;





 nodep1->num_after = offset;
 nodep2 = node_add(s, idx);


 nodep2->num_after = orig_num_after - offset;
 if (nodep2->num_after >= MASK_BITS) {
  nodep2->mask = ~(mask_t) 0;
  nodep2->num_after -= MASK_BITS;
 } else {
  nodep2->mask = (1 << nodep2->num_after) - 1;
  nodep2->num_after = 0;
 }

 return nodep2;
}
