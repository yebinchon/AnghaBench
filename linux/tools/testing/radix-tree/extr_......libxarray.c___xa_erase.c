
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 int XA_STATE (int ,struct xarray*,unsigned long) ;
 int xas ;
 void* xas_result (int *,int ) ;
 int xas_store (int *,int *) ;

void *__xa_erase(struct xarray *xa, unsigned long index)
{
 XA_STATE(xas, xa, index);
 return xas_result(&xas, xas_store(&xas, ((void*)0)));
}
