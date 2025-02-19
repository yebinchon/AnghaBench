
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int gfp_t ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int XA_FREE_MARK ;
 int XA_STATE (int ,struct xarray*,unsigned long) ;
 void* XA_ZERO_ENTRY ;
 scalar_t__ __xas_nomem (int *,int ) ;
 int xa_is_advanced (void*) ;
 scalar_t__ xa_track_free (struct xarray*) ;
 int xas ;
 int xas_clear_mark (int *,int ) ;
 int xas_error (int *) ;
 void* xas_load (int *) ;
 int xas_set_err (int *,int ) ;
 int xas_store (int *,void*) ;

int __xa_insert(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
{
 XA_STATE(xas, xa, index);
 void *curr;

 if (WARN_ON_ONCE(xa_is_advanced(entry)))
  return -EINVAL;
 if (!entry)
  entry = XA_ZERO_ENTRY;

 do {
  curr = xas_load(&xas);
  if (!curr) {
   xas_store(&xas, entry);
   if (xa_track_free(xa))
    xas_clear_mark(&xas, XA_FREE_MARK);
  } else {
   xas_set_err(&xas, -EBUSY);
  }
 } while (__xas_nomem(&xas, gfp));

 return xas_error(&xas);
}
