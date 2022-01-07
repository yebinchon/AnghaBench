
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int __kmem_cache_shrink (struct kmem_cache*) ;
 int get_online_cpus () ;
 int get_online_mems () ;
 int kasan_cache_shrink (struct kmem_cache*) ;
 int put_online_cpus () ;
 int put_online_mems () ;

int kmem_cache_shrink(struct kmem_cache *cachep)
{
 int ret;

 get_online_cpus();
 get_online_mems();
 kasan_cache_shrink(cachep);
 ret = __kmem_cache_shrink(cachep);
 put_online_mems();
 put_online_cpus();
 return ret;
}
