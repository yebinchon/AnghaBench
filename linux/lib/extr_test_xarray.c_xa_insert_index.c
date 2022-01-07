
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 int GFP_KERNEL ;
 int XA_BUG_ON (struct xarray*,int) ;
 scalar_t__ xa_insert (struct xarray*,unsigned long,int ,int ) ;
 int xa_mk_index (unsigned long) ;

__attribute__((used)) static void xa_insert_index(struct xarray *xa, unsigned long index)
{
 XA_BUG_ON(xa, xa_insert(xa, index, xa_mk_index(index),
    GFP_KERNEL) != 0);
}
