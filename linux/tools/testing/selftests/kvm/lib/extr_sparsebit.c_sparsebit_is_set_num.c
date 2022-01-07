
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef scalar_t__ sparsebit_num_t ;
typedef scalar_t__ sparsebit_idx_t ;


 int assert (int) ;
 int sparsebit_is_set (struct sparsebit*,scalar_t__) ;
 scalar_t__ sparsebit_next_clear (struct sparsebit*,scalar_t__) ;

bool sparsebit_is_set_num(struct sparsebit *s,
 sparsebit_idx_t idx, sparsebit_num_t num)
{
 sparsebit_idx_t next_cleared;

 assert(num > 0);
 assert(idx + num - 1 >= idx);


 if (!sparsebit_is_set(s, idx))
  return 0;


 next_cleared = sparsebit_next_clear(s, idx);






 return next_cleared == 0 || next_cleared - idx >= num;
}
