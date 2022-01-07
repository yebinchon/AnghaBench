
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_info {int refcnt; } ;


 int refcount_inc (int *) ;

struct mem_info *mem_info__get(struct mem_info *mi)
{
 if (mi)
  refcount_inc(&mi->refcnt);
 return mi;
}
