
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xarray {int dummy; } ;


 int __xa_set_mark (struct xarray*,unsigned long,int ) ;
 int xa_lock (struct xarray*) ;
 int xa_unlock (struct xarray*) ;

void xa_set_mark(struct xarray *xa, unsigned long index, xa_mark_t mark)
{
 xa_lock(xa);
 __xa_set_mark(xa, index, mark);
 xa_unlock(xa);
}
