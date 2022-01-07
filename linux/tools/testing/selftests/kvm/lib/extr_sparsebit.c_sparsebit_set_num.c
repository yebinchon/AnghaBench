
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int num_set; } ;
struct node {int idx; int num_after; int mask; } ;
typedef int sparsebit_num_t ;
typedef int sparsebit_idx_t ;


 int MASK_BITS ;
 int assert (int) ;
 int bit_set (struct sparsebit*,int) ;
 struct node* node_next (struct sparsebit*,struct node*) ;
 int node_reduce (struct sparsebit*,struct node*) ;
 int node_rm (struct sparsebit*,struct node*) ;
 struct node* node_split (struct sparsebit*,int) ;

void sparsebit_set_num(struct sparsebit *s,
 sparsebit_idx_t start, sparsebit_num_t num)
{
 struct node *nodep, *next;
 unsigned int n1;
 sparsebit_idx_t idx;
 sparsebit_num_t n;
 sparsebit_idx_t middle_start, middle_end;

 assert(num > 0);
 assert(start + num - 1 >= start);
 for (idx = start, n = num; n > 0 && idx % MASK_BITS != 0; idx++, n--)
  bit_set(s, idx);


 middle_start = idx;
 middle_end = middle_start + (n & -MASK_BITS) - 1;
 if (n >= MASK_BITS) {
  nodep = node_split(s, middle_start);






  if (middle_end + 1 > middle_end)
   (void) node_split(s, middle_end + 1);


  for (next = node_next(s, nodep);
   next && (next->idx < middle_end);
   next = node_next(s, nodep)) {
   assert(next->idx + MASK_BITS + next->num_after - 1 <= middle_end);
   node_rm(s, next);
   next = ((void*)0);
  }


  for (n1 = 0; n1 < MASK_BITS; n1++) {
   if (!(nodep->mask & (1 << n1))) {
    nodep->mask |= 1 << n1;
    s->num_set++;
   }
  }

  s->num_set -= nodep->num_after;
  nodep->num_after = middle_end - middle_start + 1 - MASK_BITS;
  s->num_set += nodep->num_after;

  node_reduce(s, nodep);
 }
 idx = middle_end + 1;
 n -= middle_end - middle_start + 1;


 assert(n < MASK_BITS);
 for (; n > 0; idx++, n--)
  bit_set(s, idx);
}
