
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_rmem_alloc; } ;
struct sk_buff {scalar_t__ decrypted; int tstamp; } ;
struct TYPE_4__ {scalar_t__ seq; scalar_t__ end_seq; int has_rxtstamp; int tcp_flags; int ack_seq; } ;
struct TYPE_3__ {int hwtstamp; } ;


 int LINUX_MIB_TCPRCVCOALESCE ;
 int NET_INC_STATS (int ,int ) ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int atomic_add (int,int *) ;
 int sk_mem_charge (struct sock*,int) ;
 TYPE_1__* skb_hwtstamps (struct sk_buff*) ;
 int skb_try_coalesce (struct sk_buff*,struct sk_buff*,int*,int*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static bool tcp_try_coalesce(struct sock *sk,
        struct sk_buff *to,
        struct sk_buff *from,
        bool *fragstolen)
{
 int delta;

 *fragstolen = 0;


 if (TCP_SKB_CB(from)->seq != TCP_SKB_CB(to)->end_seq)
  return 0;






 if (!skb_try_coalesce(to, from, fragstolen, &delta))
  return 0;

 atomic_add(delta, &sk->sk_rmem_alloc);
 sk_mem_charge(sk, delta);
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPRCVCOALESCE);
 TCP_SKB_CB(to)->end_seq = TCP_SKB_CB(from)->end_seq;
 TCP_SKB_CB(to)->ack_seq = TCP_SKB_CB(from)->ack_seq;
 TCP_SKB_CB(to)->tcp_flags |= TCP_SKB_CB(from)->tcp_flags;

 if (TCP_SKB_CB(from)->has_rxtstamp) {
  TCP_SKB_CB(to)->has_rxtstamp = 1;
  to->tstamp = from->tstamp;
  skb_hwtstamps(to)->hwtstamp = skb_hwtstamps(from)->hwtstamp;
 }

 return 1;
}
