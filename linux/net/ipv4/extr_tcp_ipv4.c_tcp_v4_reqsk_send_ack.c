
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union tcp_md5_addr {int dummy; } tcp_md5_addr ;
typedef scalar_t__ u32 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int rsk_rcv_wnd; int ts_recent; } ;
struct TYPE_8__ {int rcv_wscale; scalar_t__ no_srccheck; } ;
struct TYPE_7__ {int tos; int saddr; } ;
struct TYPE_6__ {scalar_t__ ts_off; int rcv_nxt; scalar_t__ snt_isn; } ;
struct TYPE_5__ {scalar_t__ snd_nxt; } ;


 int AF_INET ;
 int IP_REPLY_ARG_NOSRCCHECK ;
 scalar_t__ TCP_LISTEN ;
 TYPE_4__* inet_rsk (struct request_sock*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int tcp_md5_do_lookup (struct sock const*,union tcp_md5_addr*,int ) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 TYPE_1__* tcp_sk (struct sock const*) ;
 scalar_t__ tcp_time_stamp_raw () ;
 int tcp_v4_send_ack (struct sock const*,struct sk_buff*,scalar_t__,int ,int,scalar_t__,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void tcp_v4_reqsk_send_ack(const struct sock *sk, struct sk_buff *skb,
      struct request_sock *req)
{



 u32 seq = (sk->sk_state == TCP_LISTEN) ? tcp_rsk(req)->snt_isn + 1 :
          tcp_sk(sk)->snd_nxt;






 tcp_v4_send_ack(sk, skb, seq,
   tcp_rsk(req)->rcv_nxt,
   req->rsk_rcv_wnd >> inet_rsk(req)->rcv_wscale,
   tcp_time_stamp_raw() + tcp_rsk(req)->ts_off,
   req->ts_recent,
   0,
   tcp_md5_do_lookup(sk, (union tcp_md5_addr *)&ip_hdr(skb)->saddr,
       AF_INET),
   inet_rsk(req)->no_srccheck ? IP_REPLY_ARG_NOSRCCHECK : 0,
   ip_hdr(skb)->tos);
}
