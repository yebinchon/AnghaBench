
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; int sk_allocation; scalar_t__ sk_err; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int icsk_rto; scalar_t__ icsk_retransmits; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int dccps_iss; int dccps_gar; } ;
struct TYPE_4__ {int dccpd_type; } ;
struct TYPE_3__ {int max_header; } ;


 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_ACTIVEOPENS ;
 int DCCP_PKT_REQUEST ;
 int DCCP_RTO_MAX ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int ENOBUFS ;
 int EPROTO ;
 int ICSK_TIME_RETRANS ;
 int SOCK_DONE ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 scalar_t__ dccp_feat_finalise_settings (struct dccp_sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_skb_entail (struct sock*,struct sk_buff*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 int dccp_transmit_skb (struct sock*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ unlikely (int ) ;

int dccp_connect(struct sock *sk)
{
 struct sk_buff *skb;
 struct dccp_sock *dp = dccp_sk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 sk->sk_err = 0;
 sock_reset_flag(sk, SOCK_DONE);

 dccp_sync_mss(sk, dst_mtu(dst));


 if (dccp_feat_finalise_settings(dccp_sk(sk)))
  return -EPROTO;


 dp->dccps_gar = dp->dccps_iss;

 skb = alloc_skb(sk->sk_prot->max_header, sk->sk_allocation);
 if (unlikely(skb == ((void*)0)))
  return -ENOBUFS;


 skb_reserve(skb, sk->sk_prot->max_header);

 DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_REQUEST;

 dccp_transmit_skb(sk, dccp_skb_entail(sk, skb));
 DCCP_INC_STATS(DCCP_MIB_ACTIVEOPENS);


 icsk->icsk_retransmits = 0;
 inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
      icsk->icsk_rto, DCCP_RTO_MAX);
 return 0;
}
