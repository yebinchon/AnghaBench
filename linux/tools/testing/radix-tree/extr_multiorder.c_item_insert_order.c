
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct item {int dummy; } ;


 int GFP_KERNEL ;
 int XA_STATE_ORDER (int ,struct xarray*,unsigned long,unsigned int) ;
 int free (struct item*) ;
 struct item* item_create (unsigned long,unsigned int) ;
 int xas ;
 int xas_error (int *) ;
 int xas_lock (int *) ;
 scalar_t__ xas_nomem (int *,int ) ;
 int xas_store (int *,struct item*) ;
 int xas_unlock (int *) ;

__attribute__((used)) static int item_insert_order(struct xarray *xa, unsigned long index,
   unsigned order)
{
 XA_STATE_ORDER(xas, xa, index, order);
 struct item *item = item_create(index, order);

 do {
  xas_lock(&xas);
  xas_store(&xas, item);
  xas_unlock(&xas);
 } while (xas_nomem(&xas, GFP_KERNEL));

 if (!xas_error(&xas))
  return 0;

 free(item);
 return xas_error(&xas);
}
