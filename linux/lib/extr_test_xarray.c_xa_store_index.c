
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int gfp_t ;


 int xa_mk_index (unsigned long) ;
 void* xa_store (struct xarray*,unsigned long,int ,int ) ;

__attribute__((used)) static void *xa_store_index(struct xarray *xa, unsigned long index, gfp_t gfp)
{
 return xa_store(xa, index, xa_mk_index(index), gfp);
}
