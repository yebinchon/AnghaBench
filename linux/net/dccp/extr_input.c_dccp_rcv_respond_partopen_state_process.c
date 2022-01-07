
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u32 ;
struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {long dccpor_timestamp_echo; } ;
struct dccp_sock {int dccps_osr; int dccps_syn_rtt; TYPE_1__ dccps_options_received; } ;
struct dccp_hdr {int dccph_type; } ;
struct TYPE_4__ {int dccpd_seq; } ;


 int DCCP_OPEN ;
 int DCCP_PARTOPEN ;




 int DCCP_RESPOND ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int ICSK_TIME_DACK ;
 int __dccp_rcv_established (struct sock*,struct sk_buff*,struct dccp_hdr const*,unsigned int const) ;
 int dccp_sample_rtt (struct sock*,int) ;
 int dccp_set_state (struct sock*,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 long dccp_timestamp () ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 int likely (long) ;

__attribute__((used)) static int dccp_rcv_respond_partopen_state_process(struct sock *sk,
         struct sk_buff *skb,
         const struct dccp_hdr *dh,
         const unsigned int len)
{
 struct dccp_sock *dp = dccp_sk(sk);
 u32 sample = dp->dccps_options_received.dccpor_timestamp_echo;
 int queued = 0;

 switch (dh->dccph_type) {
 case 128:
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);
  break;
 case 130:
  if (sk->sk_state == DCCP_RESPOND)
   break;

 case 129:
 case 131:
  if (sk->sk_state == DCCP_PARTOPEN)
   inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);


  if (likely(sample)) {
   long delta = dccp_timestamp() - sample;

   dp->dccps_syn_rtt = dccp_sample_rtt(sk, 10 * delta);
  }

  dp->dccps_osr = DCCP_SKB_CB(skb)->dccpd_seq;
  dccp_set_state(sk, DCCP_OPEN);

  if (dh->dccph_type == 129 ||
      dh->dccph_type == 130) {
   __dccp_rcv_established(sk, skb, dh, len);
   queued = 1;

  }
  break;
 }

 return queued;
}
