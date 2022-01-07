
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int gfp_t ;


 void* __xa_store (struct xarray*,unsigned long,void*,int ) ;
 int xa_lock (struct xarray*) ;
 int xa_unlock (struct xarray*) ;

void *xa_store(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
{
 void *curr;

 xa_lock(xa);
 curr = __xa_store(xa, index, entry, gfp);
 xa_unlock(xa);

 return curr;
}
