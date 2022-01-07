
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct dst_cache_pcpu {int refresh_ts; int cookie; struct dst_entry* dst; } ;
struct dst_cache {int reset_ts; } ;
struct TYPE_2__ {int (* check ) (struct dst_entry*,int ) ;} ;


 int dst_cache_per_cpu_dst_set (struct dst_cache_pcpu*,int *,int ) ;
 int dst_hold (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int jiffies ;
 int stub1 (struct dst_entry*,int ) ;
 int time_after (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dst_entry *dst_cache_per_cpu_get(struct dst_cache *dst_cache,
            struct dst_cache_pcpu *idst)
{
 struct dst_entry *dst;

 dst = idst->dst;
 if (!dst)
  goto fail;


 dst_hold(dst);

 if (unlikely(!time_after(idst->refresh_ts, dst_cache->reset_ts) ||
       (dst->obsolete && !dst->ops->check(dst, idst->cookie)))) {
  dst_cache_per_cpu_dst_set(idst, ((void*)0), 0);
  dst_release(dst);
  goto fail;
 }
 return dst;

fail:
 idst->refresh_ts = jiffies;
 return ((void*)0);
}
