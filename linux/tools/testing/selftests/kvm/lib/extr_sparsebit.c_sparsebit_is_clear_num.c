
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef scalar_t__ sparsebit_num_t ;
typedef scalar_t__ sparsebit_idx_t ;


 int assert (int) ;
 int sparsebit_is_clear (struct sparsebit*,scalar_t__) ;
 scalar_t__ sparsebit_next_set (struct sparsebit*,scalar_t__) ;

bool sparsebit_is_clear_num(struct sparsebit *s,
 sparsebit_idx_t idx, sparsebit_num_t num)
{
 sparsebit_idx_t next_set;

 assert(num > 0);
 assert(idx + num - 1 >= idx);


 if (!sparsebit_is_clear(s, idx))
  return 0;


 next_set = sparsebit_next_set(s, idx);






 return next_set == 0 || next_set - idx >= num;
}
