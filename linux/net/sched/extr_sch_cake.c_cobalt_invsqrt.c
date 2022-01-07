
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_vars {size_t count; int rec_inv_sqrt; } ;


 size_t REC_INV_SQRT_CACHE ;
 int cobalt_newton_step (struct cobalt_vars*) ;
 int * cobalt_rec_inv_sqrt_cache ;

__attribute__((used)) static void cobalt_invsqrt(struct cobalt_vars *vars)
{
 if (vars->count < REC_INV_SQRT_CACHE)
  vars->rec_inv_sqrt = cobalt_rec_inv_sqrt_cache[vars->count];
 else
  cobalt_newton_step(vars);
}
