
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct dst_cache_pcpu {TYPE_1__ in_saddr; } ;
struct dst_cache {int cache; } ;
typedef int __be32 ;


 int dst_cache_per_cpu_dst_set (struct dst_cache_pcpu*,struct dst_entry*,int ) ;
 struct dst_cache_pcpu* this_cpu_ptr (int ) ;

void dst_cache_set_ip4(struct dst_cache *dst_cache, struct dst_entry *dst,
         __be32 saddr)
{
 struct dst_cache_pcpu *idst;

 if (!dst_cache->cache)
  return;

 idst = this_cpu_ptr(dst_cache->cache);
 dst_cache_per_cpu_dst_set(idst, dst, 0);
 idst->in_saddr.s_addr = saddr;
}
