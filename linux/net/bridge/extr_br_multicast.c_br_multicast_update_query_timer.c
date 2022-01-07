
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ multicast_querier_interval; } ;
struct bridge_mcast_other_query {int timer; scalar_t__ delay_time; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void
br_multicast_update_query_timer(struct net_bridge *br,
    struct bridge_mcast_other_query *query,
    unsigned long max_delay)
{
 if (!timer_pending(&query->timer))
  query->delay_time = jiffies + max_delay;

 mod_timer(&query->timer, jiffies + br->multicast_querier_interval);
}
