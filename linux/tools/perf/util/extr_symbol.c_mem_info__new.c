
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_info {int refcnt; } ;


 int refcount_set (int *,int) ;
 struct mem_info* zalloc (int) ;

struct mem_info *mem_info__new(void)
{
 struct mem_info *mi = zalloc(sizeof(*mi));

 if (mi)
  refcount_set(&mi->refcnt, 1);
 return mi;
}
