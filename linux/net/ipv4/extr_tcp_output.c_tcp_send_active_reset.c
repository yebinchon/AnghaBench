
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int LINUX_MIB_TCPABORTFAILED ;
 int MAX_TCP_HEADER ;
 int NET_INC_STATS (int ,int ) ;
 int TCPHDR_ACK ;
 int TCPHDR_RST ;
 int TCP_INC_STATS (int ,int ) ;
 int TCP_MIB_OUTRSTS ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int sock_net (struct sock*) ;
 int tcp_acceptable_seq (struct sock*) ;
 int tcp_init_nondata_skb (struct sk_buff*,int ,int) ;
 int tcp_mstamp_refresh (int ) ;
 int tcp_sk (struct sock*) ;
 scalar_t__ tcp_transmit_skb (struct sock*,struct sk_buff*,int ,int ) ;
 int trace_tcp_send_reset (struct sock*,int *) ;

void tcp_send_active_reset(struct sock *sk, gfp_t priority)
{
 struct sk_buff *skb;

 TCP_INC_STATS(sock_net(sk), TCP_MIB_OUTRSTS);


 skb = alloc_skb(MAX_TCP_HEADER, priority);
 if (!skb) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTFAILED);
  return;
 }


 skb_reserve(skb, MAX_TCP_HEADER);
 tcp_init_nondata_skb(skb, tcp_acceptable_seq(sk),
        TCPHDR_ACK | TCPHDR_RST);
 tcp_mstamp_refresh(tcp_sk(sk));

 if (tcp_transmit_skb(sk, skb, 0, priority))
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTFAILED);




 trace_tcp_send_reset(sk, ((void*)0));
}
