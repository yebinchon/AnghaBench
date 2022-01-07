
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {scalar_t__ pos; scalar_t__ size; } ;


 int EINVAL ;
 scalar_t__ ITER_STRIDE ;

int gcov_iter_next(struct gcov_iterator *iter)
{
 if (iter->pos < iter->size)
  iter->pos += ITER_STRIDE;

 if (iter->pos >= iter->size)
  return -EINVAL;

 return 0;
}
