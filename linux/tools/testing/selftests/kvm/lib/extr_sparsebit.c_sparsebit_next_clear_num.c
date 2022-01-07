
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef int sparsebit_num_t ;
typedef int sparsebit_idx_t ;


 int assert (int) ;
 int sparsebit_is_clear (struct sparsebit*,int) ;
 scalar_t__ sparsebit_is_clear_num (struct sparsebit*,int,int) ;
 int sparsebit_next_clear (struct sparsebit*,int) ;
 int sparsebit_next_set (struct sparsebit*,int) ;

sparsebit_idx_t sparsebit_next_clear_num(struct sparsebit *s,
 sparsebit_idx_t start, sparsebit_num_t num)
{
 sparsebit_idx_t idx;

 assert(num >= 1);

 for (idx = sparsebit_next_clear(s, start);
  idx != 0 && idx + num - 1 >= idx;
  idx = sparsebit_next_clear(s, idx)) {
  assert(sparsebit_is_clear(s, idx));





  if (sparsebit_is_clear_num(s, idx, num))
   return idx;





  idx = sparsebit_next_set(s, idx);
  if (idx == 0)
   return 0;
 }

 return 0;
}
