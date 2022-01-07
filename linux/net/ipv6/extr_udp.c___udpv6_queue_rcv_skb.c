
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_v6_daddr; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int IS_UDPLITE (struct sock*) ;
 int UDP6_INC_STATS (int ,int ,int) ;
 int UDP_MIB_INERRORS ;
 int UDP_MIB_RCVBUFERRORS ;
 int __udp_enqueue_schedule_skb (struct sock*,struct sk_buff*) ;
 int ipv6_addr_any (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int sk_incoming_cpu_update (struct sock*) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 int sk_mark_napi_id_once (struct sock*,struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_rps_save_rxhash (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int __udpv6_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int rc;

 if (!ipv6_addr_any(&sk->sk_v6_daddr)) {
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
   UDP6_INC_STATS(sock_net(sk),
      UDP_MIB_RCVBUFERRORS, is_udplite);
  UDP6_INC_STATS(sock_net(sk), UDP_MIB_INERRORS, is_udplite);
  kfree_skb(skb);
  return -1;
 }

 return 0;
}
