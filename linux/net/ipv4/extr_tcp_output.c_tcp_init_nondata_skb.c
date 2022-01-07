
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct sk_buff {int ip_summed; } ;
struct TYPE_2__ {int tcp_flags; void* end_seq; void* seq; scalar_t__ sacked; } ;


 int CHECKSUM_PARTIAL ;
 int TCPHDR_FIN ;
 int TCPHDR_SYN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int tcp_skb_pcount_set (struct sk_buff*,int) ;

__attribute__((used)) static void tcp_init_nondata_skb(struct sk_buff *skb, u32 seq, u8 flags)
{
 skb->ip_summed = CHECKSUM_PARTIAL;

 TCP_SKB_CB(skb)->tcp_flags = flags;
 TCP_SKB_CB(skb)->sacked = 0;

 tcp_skb_pcount_set(skb, 1);

 TCP_SKB_CB(skb)->seq = seq;
 if (flags & (TCPHDR_SYN | TCPHDR_FIN))
  seq++;
 TCP_SKB_CB(skb)->end_seq = seq;
}
