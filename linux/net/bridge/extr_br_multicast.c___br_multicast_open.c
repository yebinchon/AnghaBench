
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;
struct bridge_mcast_own_query {int timer; scalar_t__ startup_sent; } ;


 int BROPT_MULTICAST_ENABLED ;
 int br_opt_get (struct net_bridge*,int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void __br_multicast_open(struct net_bridge *br,
    struct bridge_mcast_own_query *query)
{
 query->startup_sent = 0;

 if (!br_opt_get(br, BROPT_MULTICAST_ENABLED))
  return;

 mod_timer(&query->timer, jiffies);
}
