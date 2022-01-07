
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 int XA_BUG_ON (struct xarray*,int) ;
 scalar_t__ xa_erase (struct xarray*,unsigned long) ;
 int * xa_load (struct xarray*,unsigned long) ;
 scalar_t__ xa_mk_index (unsigned long) ;

__attribute__((used)) static void xa_erase_index(struct xarray *xa, unsigned long index)
{
 XA_BUG_ON(xa, xa_erase(xa, index) != xa_mk_index(index));
 XA_BUG_ON(xa, xa_load(xa, index) != ((void*)0));
}
