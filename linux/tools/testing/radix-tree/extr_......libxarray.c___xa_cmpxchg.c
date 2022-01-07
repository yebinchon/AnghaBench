
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 void* XA_ERROR (int ) ;
 int XA_FREE_MARK ;
 int XA_STATE (int ,struct xarray*,unsigned long) ;
 scalar_t__ __xas_nomem (int *,int ) ;
 int xa_is_advanced (void*) ;
 scalar_t__ xa_track_free (struct xarray*) ;
 int xas ;
 int xas_clear_mark (int *,int ) ;
 void* xas_load (int *) ;
 void* xas_result (int *,void*) ;
 int xas_store (int *,void*) ;

void *__xa_cmpxchg(struct xarray *xa, unsigned long index,
   void *old, void *entry, gfp_t gfp)
{
 XA_STATE(xas, xa, index);
 void *curr;

 if (WARN_ON_ONCE(xa_is_advanced(entry)))
  return XA_ERROR(-EINVAL);

 do {
  curr = xas_load(&xas);
  if (curr == old) {
   xas_store(&xas, entry);
   if (xa_track_free(xa) && entry && !curr)
    xas_clear_mark(&xas, XA_FREE_MARK);
  }
 } while (__xas_nomem(&xas, gfp));

 return xas_result(&xas, curr);
}
