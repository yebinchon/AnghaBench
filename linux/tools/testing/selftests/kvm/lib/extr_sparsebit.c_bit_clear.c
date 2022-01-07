
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {scalar_t__ num_set; } ;
struct node {int idx; int mask; } ;
typedef int sparsebit_idx_t ;


 int MASK_BITS ;
 int assert (int) ;
 struct node* node_find (struct sparsebit*,int) ;
 int node_reduce (struct sparsebit*,struct node*) ;
 struct node* node_split (struct sparsebit*,int) ;
 scalar_t__ sparsebit_all_set (struct sparsebit*) ;
 int sparsebit_is_set (struct sparsebit*,int) ;

__attribute__((used)) static void bit_clear(struct sparsebit *s, sparsebit_idx_t idx)
{
 struct node *nodep;


 if (!sparsebit_is_set(s, idx))
  return;


 nodep = node_find(s, idx);
 if (!nodep)
  return;





 if (idx >= nodep->idx + MASK_BITS)
  nodep = node_split(s, idx & -MASK_BITS);





 assert(idx >= nodep->idx && idx <= nodep->idx + MASK_BITS - 1);
 assert(nodep->mask & (1 << (idx - nodep->idx)));
 nodep->mask &= ~(1 << (idx - nodep->idx));
 assert(s->num_set > 0 || sparsebit_all_set(s));
 s->num_set--;

 node_reduce(s, nodep);
}
