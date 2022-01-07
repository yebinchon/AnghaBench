
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct cobalt_vars {unsigned int rec_inv_sqrt; int count; } ;


 int REC_INV_SQRT_CACHE ;
 int cobalt_newton_step (struct cobalt_vars*) ;
 unsigned int* cobalt_rec_inv_sqrt_cache ;
 int memset (struct cobalt_vars*,int ,int) ;

__attribute__((used)) static void cobalt_cache_init(void)
{
 struct cobalt_vars v;

 memset(&v, 0, sizeof(v));
 v.rec_inv_sqrt = ~0U;
 cobalt_rec_inv_sqrt_cache[0] = v.rec_inv_sqrt;

 for (v.count = 1; v.count < REC_INV_SQRT_CACHE; v.count++) {
  cobalt_newton_step(&v);
  cobalt_newton_step(&v);
  cobalt_newton_step(&v);
  cobalt_newton_step(&v);

  cobalt_rec_inv_sqrt_cache[v.count] = v.rec_inv_sqrt;
 }
}
