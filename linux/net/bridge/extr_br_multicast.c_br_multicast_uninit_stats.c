
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int mcast_stats; } ;


 int free_percpu (int ) ;

void br_multicast_uninit_stats(struct net_bridge *br)
{
 free_percpu(br->mcast_stats);
}
