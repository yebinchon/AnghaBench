
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_mcast_own_query {int timer; scalar_t__ startup_sent; } ;


 scalar_t__ del_timer (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ try_to_del_timer_sync (int *) ;

__attribute__((used)) static void br_multicast_enable(struct bridge_mcast_own_query *query)
{
 query->startup_sent = 0;

 if (try_to_del_timer_sync(&query->timer) >= 0 ||
     del_timer(&query->timer))
  mod_timer(&query->timer, jiffies);
}
