
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xarray {int xa_flags; } ;


 int XA_FLAGS_MARK (int ) ;

__attribute__((used)) static inline void xa_mark_clear(struct xarray *xa, xa_mark_t mark)
{
 if (xa->xa_flags & XA_FLAGS_MARK(mark))
  xa->xa_flags &= ~(XA_FLAGS_MARK(mark));
}
