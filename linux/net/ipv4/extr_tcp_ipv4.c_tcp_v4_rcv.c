
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int doff; int dest; int source; } ;
struct sock {scalar_t__ sk_state; struct sk_buff* sk_rx_skb_cache; } ;
struct sk_buff {scalar_t__ pkt_type; int * dev; scalar_t__ data; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct net {int dummy; } ;
struct iphdr {scalar_t__ ttl; int daddr; int saddr; } ;
struct TYPE_2__ {scalar_t__ min_ttl; } ;


 int IPPROTO_TCP ;
 int LINUX_MIB_TCPMINTTLDROP ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ TCP_LISTEN ;
 int TCP_MIB_CSUMERRORS ;
 int TCP_MIB_INERRS ;
 int TCP_MIB_INSEGS ;
 scalar_t__ TCP_NEW_SYN_RECV ;
 scalar_t__ TCP_TIME_WAIT ;




 int XFRM_POLICY_IN ;
 int __NET_INC_STATS (struct net*,int ) ;
 int __TCP_INC_STATS (struct net*,int ) ;
 struct sock* __inet_lookup_skb (int *,struct sk_buff*,int ,int ,int ,int,int*) ;
 int __kfree_skb (struct sk_buff*) ;
 int __tcp_hdrlen (struct tcphdr const*) ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (int *) ;
 int inet_compute_pseudo ;
 int inet_csk_reqsk_queue_drop_and_put (struct sock*,struct request_sock*) ;
 int inet_iif (struct sk_buff*) ;
 struct sock* inet_lookup_listener (struct net*,int *,struct sk_buff*,int ,int ,int ,int ,int ,int ,int) ;
 struct request_sock* inet_reqsk (struct sock*) ;
 int inet_sdif (struct sk_buff*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_deschedule_put (int ) ;
 int inet_twsk_put (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int reqsk_put (struct request_sock*) ;
 int sk_drops_add (struct sock*,struct sk_buff*) ;
 int sk_incoming_cpu_update (struct sock*) ;
 scalar_t__ skb_checksum_init (struct sk_buff*,int ,int ) ;
 int sock_hold (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ tcp_add_backlog (struct sock*,struct sk_buff*) ;
 struct sock* tcp_check_req (struct sock*,struct sk_buff*,struct request_sock*,int,int*) ;
 scalar_t__ tcp_checksum_complete (struct sk_buff*) ;
 scalar_t__ tcp_child_process (struct sock*,struct sock*,struct sk_buff*) ;
 scalar_t__ tcp_filter (struct sock*,struct sk_buff*) ;
 int tcp_hashinfo ;
 int tcp_segs_in (int ,struct sk_buff*) ;
 int tcp_sk (struct sock*) ;
 int tcp_timewait_state_process (int ,struct sk_buff*,struct tcphdr const*) ;
 int tcp_v4_do_rcv (struct sock*,struct sk_buff*) ;
 int tcp_v4_fill_cb (struct sk_buff*,struct iphdr const*,struct tcphdr const*) ;
 int tcp_v4_inbound_md5_hash (struct sock*,struct sk_buff*) ;
 int tcp_v4_restore_cb (struct sk_buff*) ;
 int tcp_v4_send_reset (struct sock*,struct sk_buff*) ;
 int tcp_v4_timewait_ack (struct sock*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xfrm4_policy_check (struct sock*,int ,struct sk_buff*) ;

int tcp_v4_rcv(struct sk_buff *skb)
{
 struct net *net = dev_net(skb->dev);
 struct sk_buff *skb_to_free;
 int sdif = inet_sdif(skb);
 const struct iphdr *iph;
 const struct tcphdr *th;
 bool refcounted;
 struct sock *sk;
 int ret;

 if (skb->pkt_type != PACKET_HOST)
  goto discard_it;


 __TCP_INC_STATS(net, TCP_MIB_INSEGS);

 if (!pskb_may_pull(skb, sizeof(struct tcphdr)))
  goto discard_it;

 th = (const struct tcphdr *)skb->data;

 if (unlikely(th->doff < sizeof(struct tcphdr) / 4))
  goto bad_packet;
 if (!pskb_may_pull(skb, th->doff * 4))
  goto discard_it;






 if (skb_checksum_init(skb, IPPROTO_TCP, inet_compute_pseudo))
  goto csum_error;

 th = (const struct tcphdr *)skb->data;
 iph = ip_hdr(skb);
lookup:
 sk = __inet_lookup_skb(&tcp_hashinfo, skb, __tcp_hdrlen(th), th->source,
          th->dest, sdif, &refcounted);
 if (!sk)
  goto no_tcp_socket;

process:
 if (sk->sk_state == TCP_TIME_WAIT)
  goto do_time_wait;

 if (sk->sk_state == TCP_NEW_SYN_RECV) {
  struct request_sock *req = inet_reqsk(sk);
  bool req_stolen = 0;
  struct sock *nsk;

  sk = req->rsk_listener;
  if (unlikely(tcp_v4_inbound_md5_hash(sk, skb))) {
   sk_drops_add(sk, skb);
   reqsk_put(req);
   goto discard_it;
  }
  if (tcp_checksum_complete(skb)) {
   reqsk_put(req);
   goto csum_error;
  }
  if (unlikely(sk->sk_state != TCP_LISTEN)) {
   inet_csk_reqsk_queue_drop_and_put(sk, req);
   goto lookup;
  }



  sock_hold(sk);
  refcounted = 1;
  nsk = ((void*)0);
  if (!tcp_filter(sk, skb)) {
   th = (const struct tcphdr *)skb->data;
   iph = ip_hdr(skb);
   tcp_v4_fill_cb(skb, iph, th);
   nsk = tcp_check_req(sk, skb, req, 0, &req_stolen);
  }
  if (!nsk) {
   reqsk_put(req);
   if (req_stolen) {





    tcp_v4_restore_cb(skb);
    sock_put(sk);
    goto lookup;
   }
   goto discard_and_relse;
  }
  if (nsk == sk) {
   reqsk_put(req);
   tcp_v4_restore_cb(skb);
  } else if (tcp_child_process(sk, nsk, skb)) {
   tcp_v4_send_reset(nsk, skb);
   goto discard_and_relse;
  } else {
   sock_put(sk);
   return 0;
  }
 }
 if (unlikely(iph->ttl < inet_sk(sk)->min_ttl)) {
  __NET_INC_STATS(net, LINUX_MIB_TCPMINTTLDROP);
  goto discard_and_relse;
 }

 if (!xfrm4_policy_check(sk, XFRM_POLICY_IN, skb))
  goto discard_and_relse;

 if (tcp_v4_inbound_md5_hash(sk, skb))
  goto discard_and_relse;

 nf_reset_ct(skb);

 if (tcp_filter(sk, skb))
  goto discard_and_relse;
 th = (const struct tcphdr *)skb->data;
 iph = ip_hdr(skb);
 tcp_v4_fill_cb(skb, iph, th);

 skb->dev = ((void*)0);

 if (sk->sk_state == TCP_LISTEN) {
  ret = tcp_v4_do_rcv(sk, skb);
  goto put_and_return;
 }

 sk_incoming_cpu_update(sk);

 bh_lock_sock_nested(sk);
 tcp_segs_in(tcp_sk(sk), skb);
 ret = 0;
 if (!sock_owned_by_user(sk)) {
  skb_to_free = sk->sk_rx_skb_cache;
  sk->sk_rx_skb_cache = ((void*)0);
  ret = tcp_v4_do_rcv(sk, skb);
 } else {
  if (tcp_add_backlog(sk, skb))
   goto discard_and_relse;
  skb_to_free = ((void*)0);
 }
 bh_unlock_sock(sk);
 if (skb_to_free)
  __kfree_skb(skb_to_free);

put_and_return:
 if (refcounted)
  sock_put(sk);

 return ret;

no_tcp_socket:
 if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb))
  goto discard_it;

 tcp_v4_fill_cb(skb, iph, th);

 if (tcp_checksum_complete(skb)) {
csum_error:
  __TCP_INC_STATS(net, TCP_MIB_CSUMERRORS);
bad_packet:
  __TCP_INC_STATS(net, TCP_MIB_INERRS);
 } else {
  tcp_v4_send_reset(((void*)0), skb);
 }

discard_it:

 kfree_skb(skb);
 return 0;

discard_and_relse:
 sk_drops_add(sk, skb);
 if (refcounted)
  sock_put(sk);
 goto discard_it;

do_time_wait:
 if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
  inet_twsk_put(inet_twsk(sk));
  goto discard_it;
 }

 tcp_v4_fill_cb(skb, iph, th);

 if (tcp_checksum_complete(skb)) {
  inet_twsk_put(inet_twsk(sk));
  goto csum_error;
 }
 switch (tcp_timewait_state_process(inet_twsk(sk), skb, th)) {
 case 128: {
  struct sock *sk2 = inet_lookup_listener(dev_net(skb->dev),
       &tcp_hashinfo, skb,
       __tcp_hdrlen(th),
       iph->saddr, th->source,
       iph->daddr, th->dest,
       inet_iif(skb),
       sdif);
  if (sk2) {
   inet_twsk_deschedule_put(inet_twsk(sk));
   sk = sk2;
   tcp_v4_restore_cb(skb);
   refcounted = 0;
   goto process;
  }
 }


 case 131:
  tcp_v4_timewait_ack(sk, skb);
  break;
 case 130:
  tcp_v4_send_reset(sk, skb);
  inet_twsk_deschedule_put(inet_twsk(sk));
  goto discard_it;
 case 129:;
 }
 goto discard_it;
}
