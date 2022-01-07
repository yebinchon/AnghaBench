
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rtt_us; } ;
struct tcp_sock {int tcp_mstamp; TYPE_1__ rack; } ;
struct sk_buff {int dummy; } ;
typedef scalar_t__ s32 ;


 int tcp_skb_timestamp_us (struct sk_buff*) ;
 scalar_t__ tcp_stamp_us_delta (int ,int ) ;

s32 tcp_rack_skb_timeout(struct tcp_sock *tp, struct sk_buff *skb, u32 reo_wnd)
{
 return tp->rack.rtt_us + reo_wnd -
        tcp_stamp_us_delta(tp->tcp_mstamp, tcp_skb_timestamp_us(skb));
}
