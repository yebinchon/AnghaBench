
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cobalt_vars {int rec_inv_sqrt; scalar_t__ count; } ;



__attribute__((used)) static void cobalt_newton_step(struct cobalt_vars *vars)
{
 u32 invsqrt, invsqrt2;
 u64 val;

 invsqrt = vars->rec_inv_sqrt;
 invsqrt2 = ((u64)invsqrt * invsqrt) >> 32;
 val = (3LL << 32) - ((u64)vars->count * invsqrt2);

 val >>= 2;
 val = (val * invsqrt) >> (32 - 2 + 1);

 vars->rec_inv_sqrt = val;
}
