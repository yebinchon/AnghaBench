
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;


 int GFP_KERNEL ;
 int XA_BUG_ON (struct xarray*,int) ;
 int xa_empty (struct xarray*) ;
 int xa_erase (struct xarray*,int ) ;
 scalar_t__ xa_reserve (struct xarray*,int ,int ) ;
 int * xa_store (struct xarray*,int ,char*,int ) ;

__attribute__((used)) static void check_align_2(struct xarray *xa, char *name)
{
 int i;

 XA_BUG_ON(xa, !xa_empty(xa));

 for (i = 0; i < 8; i++) {
  XA_BUG_ON(xa, xa_store(xa, 0, name + i, GFP_KERNEL) != ((void*)0));
  xa_erase(xa, 0);
 }

 for (i = 0; i < 8; i++) {
  XA_BUG_ON(xa, xa_reserve(xa, 0, GFP_KERNEL) != 0);
  XA_BUG_ON(xa, xa_store(xa, 0, name + i, 0) != ((void*)0));
  xa_erase(xa, 0);
 }

 XA_BUG_ON(xa, !xa_empty(xa));
}
