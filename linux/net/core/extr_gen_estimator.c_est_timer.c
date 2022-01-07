
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timer_list {int dummy; } ;
struct net_rate_estimator {int last_bytes; int ewma_log; int intvl_log; int avbps; int avpps; scalar_t__ next_jiffies; int timer; scalar_t__ last_packets; int seq; } ;
struct gnet_stats_basic_packed {int bytes; scalar_t__ packets; } ;


 int HZ ;
 struct net_rate_estimator* est ;
 int est_fetch_counters (struct net_rate_estimator*,struct gnet_stats_basic_packed*) ;
 struct net_rate_estimator* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int time_after_eq (scalar_t__,scalar_t__) ;
 int timer ;
 scalar_t__ unlikely (int ) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static void est_timer(struct timer_list *t)
{
 struct net_rate_estimator *est = from_timer(est, t, timer);
 struct gnet_stats_basic_packed b;
 u64 rate, brate;

 est_fetch_counters(est, &b);
 brate = (b.bytes - est->last_bytes) << (10 - est->ewma_log - est->intvl_log);
 brate -= (est->avbps >> est->ewma_log);

 rate = (u64)(b.packets - est->last_packets) << (10 - est->ewma_log - est->intvl_log);
 rate -= (est->avpps >> est->ewma_log);

 write_seqcount_begin(&est->seq);
 est->avbps += brate;
 est->avpps += rate;
 write_seqcount_end(&est->seq);

 est->last_bytes = b.bytes;
 est->last_packets = b.packets;

 est->next_jiffies += ((HZ/4) << est->intvl_log);

 if (unlikely(time_after_eq(jiffies, est->next_jiffies))) {

  est->next_jiffies = jiffies + 1;
 }
 mod_timer(&est->timer, est->next_jiffies);
}
