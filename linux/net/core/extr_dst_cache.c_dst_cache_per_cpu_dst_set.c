
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_entry {int dummy; } ;
struct dst_cache_pcpu {struct dst_entry* dst; int cookie; } ;


 int dst_hold (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;

__attribute__((used)) static void dst_cache_per_cpu_dst_set(struct dst_cache_pcpu *dst_cache,
          struct dst_entry *dst, u32 cookie)
{
 dst_release(dst_cache->dst);
 if (dst)
  dst_hold(dst);

 dst_cache->cookie = cookie;
 dst_cache->dst = dst;
}
