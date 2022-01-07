
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 int XA_STATE (int ,struct xarray*,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ xa_is_zero (void*) ;
 int xas ;
 void* xas_load (int *) ;
 scalar_t__ xas_retry (int *,void*) ;

void *xa_load(struct xarray *xa, unsigned long index)
{
 XA_STATE(xas, xa, index);
 void *entry;

 rcu_read_lock();
 do {
  entry = xas_load(&xas);
  if (xa_is_zero(entry))
   entry = ((void*)0);
 } while (xas_retry(&xas, entry));
 rcu_read_unlock();

 return entry;
}
