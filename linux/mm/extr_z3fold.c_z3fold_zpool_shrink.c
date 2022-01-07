
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int z3fold_reclaim_page (void*,int) ;

__attribute__((used)) static int z3fold_zpool_shrink(void *pool, unsigned int pages,
   unsigned int *reclaimed)
{
 unsigned int total = 0;
 int ret = -EINVAL;

 while (total < pages) {
  ret = z3fold_reclaim_page(pool, 8);
  if (ret < 0)
   break;
  total++;
 }

 if (reclaimed)
  *reclaimed = total;

 return ret;
}
