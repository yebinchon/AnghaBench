
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int br_ip4_multicast_leave_snoopers (struct net_bridge*) ;
 int br_ip6_multicast_leave_snoopers (struct net_bridge*) ;

__attribute__((used)) static void br_multicast_leave_snoopers(struct net_bridge *br)
{
 br_ip4_multicast_leave_snoopers(br);
 br_ip6_multicast_leave_snoopers(br);
}
