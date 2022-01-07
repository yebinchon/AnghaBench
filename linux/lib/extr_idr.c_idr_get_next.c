
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 unsigned long INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 void* idr_get_next_ul (struct idr*,unsigned long*) ;

void *idr_get_next(struct idr *idr, int *nextid)
{
 unsigned long id = *nextid;
 void *entry = idr_get_next_ul(idr, &id);

 if (WARN_ON_ONCE(id > INT_MAX))
  return ((void*)0);
 *nextid = id;
 return entry;
}
