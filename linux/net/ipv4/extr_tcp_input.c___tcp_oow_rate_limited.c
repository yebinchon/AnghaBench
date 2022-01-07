
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ sysctl_tcp_invalid_ratelimit; } ;
struct net {TYPE_1__ ipv4; } ;
typedef scalar_t__ s32 ;


 int NET_INC_STATS (struct net*,int) ;
 scalar_t__ tcp_jiffies32 ;

__attribute__((used)) static bool __tcp_oow_rate_limited(struct net *net, int mib_idx,
       u32 *last_oow_ack_time)
{
 if (*last_oow_ack_time) {
  s32 elapsed = (s32)(tcp_jiffies32 - *last_oow_ack_time);

  if (0 <= elapsed && elapsed < net->ipv4.sysctl_tcp_invalid_ratelimit) {
   NET_INC_STATS(net, mib_idx);
   return 1;
  }
 }

 *last_oow_ack_time = tcp_jiffies32;

 return 0;
}
