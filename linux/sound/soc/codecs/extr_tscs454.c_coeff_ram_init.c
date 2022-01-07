
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coeff_ram {int lock; int cache; } ;


 int init_coeff_ram_cache (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static inline void coeff_ram_init(struct coeff_ram *ram)
{
 init_coeff_ram_cache(ram->cache);
 mutex_init(&ram->lock);
}
