
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ seq; scalar_t__ end_seq; } ;
struct TYPE_3__ {int syn; } ;


 TYPE_2__* TCP_SKB_CB (struct sk_buff const*) ;
 int __tcp_oow_rate_limited (struct net*,int,int *) ;
 TYPE_1__* tcp_hdr (struct sk_buff const*) ;

bool tcp_oow_rate_limited(struct net *net, const struct sk_buff *skb,
     int mib_idx, u32 *last_oow_ack_time)
{

 if ((TCP_SKB_CB(skb)->seq != TCP_SKB_CB(skb)->end_seq) &&
     !tcp_hdr(skb)->syn)
  return 0;

 return __tcp_oow_rate_limited(net, mib_idx, last_oow_ack_time);
}
