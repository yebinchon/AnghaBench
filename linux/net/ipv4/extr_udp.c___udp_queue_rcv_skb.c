
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ inet_daddr; } ;


 int ENOMEM ;
 int IS_UDPLITE (struct sock*) ;
 int UDP_INC_STATS (int ,int ,int) ;
 int UDP_MIB_INERRORS ;
 int UDP_MIB_RCVBUFERRORS ;
 int __udp_enqueue_schedule_skb (struct sock*,struct sk_buff*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int sk_incoming_cpu_update (struct sock*) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 int sk_mark_napi_id_once (struct sock*,struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_rps_save_rxhash (struct sock*,struct sk_buff*) ;
 int trace_udp_fail_queue_rcv_skb (int,struct sock*) ;

__attribute__((used)) static int __udp_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int rc;

 if (inet_sk(sk)->inet_daddr) {
  sock_rps_save_rxhash(sk, skb);
  sk_mark_napi_id(sk, skb);
  sk_incoming_cpu_update(sk);
 } else {
  sk_mark_napi_id_once(sk, skb);
 }

 rc = __udp_enqueue_schedule_skb(sk, skb);
 if (rc < 0) {
  int is_udplite = IS_UDPLITE(sk);


  if (rc == -ENOMEM)
   UDP_INC_STATS(sock_net(sk), UDP_MIB_RCVBUFERRORS,
     is_udplite);
  UDP_INC_STATS(sock_net(sk), UDP_MIB_INERRORS, is_udplite);
  kfree_skb(skb);
  trace_udp_fail_queue_rcv_skb(rc, sk);
  return -1;
 }

 return 0;
}
