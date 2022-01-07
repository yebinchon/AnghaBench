
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct item {int order; } ;


 int GFP_KERNEL ;
 int TAG ;
 int XA_STATE (int ,struct xarray*,unsigned long) ;
 int free (struct item*) ;
 struct item* item_create (unsigned long,int ) ;
 int max_order ;
 int xas ;
 scalar_t__ xas_find_conflict (int *) ;
 int xas_lock (int *) ;
 scalar_t__ xas_nomem (int *,int ) ;
 int xas_set_mark (int *,int ) ;
 int xas_set_order (int *,unsigned long,int) ;
 int xas_store (int *,struct item*) ;
 int xas_unlock (int *) ;

void my_item_insert(struct xarray *xa, unsigned long index)
{
 XA_STATE(xas, xa, index);
 struct item *item = item_create(index, 0);
 int order;

retry:
 xas_lock(&xas);
 for (order = max_order; order >= 0; order--) {
  xas_set_order(&xas, index, order);
  item->order = order;
  if (xas_find_conflict(&xas))
   continue;
  xas_store(&xas, item);
  xas_set_mark(&xas, TAG);
  break;
 }
 xas_unlock(&xas);
 if (xas_nomem(&xas, GFP_KERNEL))
  goto retry;
 if (order < 0)
  free(item);
}
