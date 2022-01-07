
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_vars {int dummy; } ;


 int cobalt_cache_init () ;
 int * cobalt_rec_inv_sqrt_cache ;
 int memset (struct cobalt_vars*,int ,int) ;

__attribute__((used)) static void cobalt_vars_init(struct cobalt_vars *vars)
{
 memset(vars, 0, sizeof(*vars));

 if (!cobalt_rec_inv_sqrt_cache[0]) {
  cobalt_cache_init();
  cobalt_rec_inv_sqrt_cache[0] = ~0;
 }
}
