
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_una; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int end_seq; scalar_t__ seq; } ;


 int BUG_ON (int) ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int after (int ,scalar_t__) ;
 int before (scalar_t__,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;
 scalar_t__ tcp_trim_head (struct sock*,struct sk_buff*,scalar_t__) ;

__attribute__((used)) static u32 tcp_tso_acked(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 packets_acked;

 BUG_ON(!after(TCP_SKB_CB(skb)->end_seq, tp->snd_una));

 packets_acked = tcp_skb_pcount(skb);
 if (tcp_trim_head(sk, skb, tp->snd_una - TCP_SKB_CB(skb)->seq))
  return 0;
 packets_acked -= tcp_skb_pcount(skb);

 if (packets_acked) {
  BUG_ON(tcp_skb_pcount(skb) == 0);
  BUG_ON(!before(TCP_SKB_CB(skb)->seq, TCP_SKB_CB(skb)->end_seq));
 }

 return packets_acked;
}
