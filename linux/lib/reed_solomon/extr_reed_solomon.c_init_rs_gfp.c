
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_control {int dummy; } ;
typedef int gfp_t ;


 struct rs_control* init_rs_internal (int,int,int *,int,int,int,int ) ;

struct rs_control *init_rs_gfp(int symsize, int gfpoly, int fcr, int prim,
          int nroots, gfp_t gfp)
{
 return init_rs_internal(symsize, gfpoly, ((void*)0), fcr, prim, nroots, gfp);
}
