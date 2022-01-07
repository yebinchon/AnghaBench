
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_rate_estimator {scalar_t__ stats_lock; int bstats; int cpu_bstats; int running; } ;
struct gnet_stats_basic_packed {int dummy; } ;


 int __gnet_stats_copy_basic (int ,struct gnet_stats_basic_packed*,int ,int ) ;
 int memset (struct gnet_stats_basic_packed*,int ,int) ;
 int spin_lock (scalar_t__) ;
 int spin_unlock (scalar_t__) ;

__attribute__((used)) static void est_fetch_counters(struct net_rate_estimator *e,
          struct gnet_stats_basic_packed *b)
{
 memset(b, 0, sizeof(*b));
 if (e->stats_lock)
  spin_lock(e->stats_lock);

 __gnet_stats_copy_basic(e->running, b, e->cpu_bstats, e->bstats);

 if (e->stats_lock)
  spin_unlock(e->stats_lock);

}
