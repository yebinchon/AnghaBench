
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 void* __xa_erase (struct xarray*,unsigned long) ;
 int xa_lock (struct xarray*) ;
 int xa_unlock (struct xarray*) ;

void *xa_erase(struct xarray *xa, unsigned long index)
{
 void *entry;

 xa_lock(xa);
 entry = __xa_erase(xa, index);
 xa_unlock(xa);

 return entry;
}
