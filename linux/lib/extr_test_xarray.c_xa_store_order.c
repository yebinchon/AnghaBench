
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int gfp_t ;


 int XA_STATE_ORDER (int ,struct xarray*,unsigned long,unsigned int) ;
 int xas ;
 int xas_lock (int *) ;
 scalar_t__ xas_nomem (int *,int ) ;
 void* xas_store (int *,void*) ;
 int xas_unlock (int *) ;

__attribute__((used)) static void *xa_store_order(struct xarray *xa, unsigned long index,
  unsigned order, void *entry, gfp_t gfp)
{
 XA_STATE_ORDER(xas, xa, index, order);
 void *curr;

 do {
  xas_lock(&xas);
  curr = xas_store(&xas, entry);
  xas_unlock(&xas);
 } while (xas_nomem(&xas, gfp));

 return curr;
}
