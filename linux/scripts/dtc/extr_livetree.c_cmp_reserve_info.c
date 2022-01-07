
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_info {scalar_t__ address; scalar_t__ size; } ;



__attribute__((used)) static int cmp_reserve_info(const void *ax, const void *bx)
{
 const struct reserve_info *a, *b;

 a = *((const struct reserve_info * const *)ax);
 b = *((const struct reserve_info * const *)bx);

 if (a->address < b->address)
  return -1;
 else if (a->address > b->address)
  return 1;
 else if (a->size < b->size)
  return -1;
 else if (a->size > b->size)
  return 1;
 else
  return 0;
}
