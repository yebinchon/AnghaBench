
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct xarray {int dummy; } ;
typedef int gfp_t ;


 int XA_BUG_ON (struct xarray*,int) ;
 scalar_t__ xa_alloc (struct xarray*,unsigned long*,int ,int ,int ) ;
 int xa_limit_32b ;
 int xa_mk_index (unsigned long) ;

__attribute__((used)) static void xa_alloc_index(struct xarray *xa, unsigned long index, gfp_t gfp)
{
 u32 id;

 XA_BUG_ON(xa, xa_alloc(xa, &id, xa_mk_index(index), xa_limit_32b,
    gfp) != 0);
 XA_BUG_ON(xa, id != index);
}
