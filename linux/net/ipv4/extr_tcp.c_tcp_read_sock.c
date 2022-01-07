
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct tcp_sock {size_t copied_seq; size_t urg_seq; scalar_t__ urg_data; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {size_t len; } ;
typedef int (* sk_read_actor_t ) (TYPE_1__*,struct sk_buff*,size_t,size_t) ;
struct TYPE_6__ {int count; } ;
typedef TYPE_1__ read_descriptor_t ;
struct TYPE_7__ {int tcp_flags; } ;


 int ENOTCONN ;
 int TCPHDR_FIN ;
 scalar_t__ TCP_LISTEN ;
 TYPE_5__* TCP_SKB_CB (struct sk_buff*) ;
 int WRITE_ONCE (size_t,size_t) ;
 int sk_eat_skb (struct sock*,struct sk_buff*) ;
 int tcp_cleanup_rbuf (struct sock*,int) ;
 int tcp_rcv_space_adjust (struct sock*) ;
 struct sk_buff* tcp_recv_skb (struct sock*,size_t,size_t*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

int tcp_read_sock(struct sock *sk, read_descriptor_t *desc,
    sk_read_actor_t recv_actor)
{
 struct sk_buff *skb;
 struct tcp_sock *tp = tcp_sk(sk);
 u32 seq = tp->copied_seq;
 u32 offset;
 int copied = 0;

 if (sk->sk_state == TCP_LISTEN)
  return -ENOTCONN;
 while ((skb = tcp_recv_skb(sk, seq, &offset)) != ((void*)0)) {
  if (offset < skb->len) {
   int used;
   size_t len;

   len = skb->len - offset;

   if (tp->urg_data) {
    u32 urg_offset = tp->urg_seq - seq;
    if (urg_offset < len)
     len = urg_offset;
    if (!len)
     break;
   }
   used = recv_actor(desc, skb, offset, len);
   if (used <= 0) {
    if (!copied)
     copied = used;
    break;
   } else if (used <= len) {
    seq += used;
    copied += used;
    offset += used;
   }





   skb = tcp_recv_skb(sk, seq - 1, &offset);
   if (!skb)
    break;



   if (offset + 1 != skb->len)
    continue;
  }
  if (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN) {
   sk_eat_skb(sk, skb);
   ++seq;
   break;
  }
  sk_eat_skb(sk, skb);
  if (!desc->count)
   break;
  WRITE_ONCE(tp->copied_seq, seq);
 }
 WRITE_ONCE(tp->copied_seq, seq);

 tcp_rcv_space_adjust(sk);


 if (copied > 0) {
  tcp_recv_skb(sk, seq, &offset);
  tcp_cleanup_rbuf(sk, copied);
 }
 return copied;
}
