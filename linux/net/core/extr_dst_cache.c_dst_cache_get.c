
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;
struct dst_cache {int cache; } ;


 struct dst_entry* dst_cache_per_cpu_get (struct dst_cache*,int ) ;
 int this_cpu_ptr (int ) ;

struct dst_entry *dst_cache_get(struct dst_cache *dst_cache)
{
 if (!dst_cache->cache)
  return ((void*)0);

 return dst_cache_per_cpu_get(dst_cache, this_cpu_ptr(dst_cache->cache));
}
