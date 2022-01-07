
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
 void* XA_ZERO_ENTRY ;
 scalar_t__ __xas_nomem (int *,int ) ;
 int xa_is_advanced (void*) ;
 scalar_t__ xa_track_free (struct xarray*) ;
 int xas ;
 int xas_clear_mark (int *,int ) ;
 void* xas_result (int *,void*) ;
 void* xas_store (int *,void*) ;

void *__xa_store(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
{
 XA_STATE(xas, xa, index);
 void *curr;

 if (WARN_ON_ONCE(xa_is_advanced(entry)))
  return XA_ERROR(-EINVAL);
 if (xa_track_free(xa) && !entry)
  entry = XA_ZERO_ENTRY;

 do {
  curr = xas_store(&xas, entry);
  if (xa_track_free(xa))
   xas_clear_mark(&xas, XA_FREE_MARK);
 } while (__xas_nomem(&xas, gfp));

 return xas_result(&xas, curr);
}
