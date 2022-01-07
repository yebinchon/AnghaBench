
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cache_level {int size; int map; int type; } ;


 int zfree (int *) ;

void cpu_cache_level__free(struct cpu_cache_level *cache)
{
 zfree(&cache->type);
 zfree(&cache->map);
 zfree(&cache->size);
}
