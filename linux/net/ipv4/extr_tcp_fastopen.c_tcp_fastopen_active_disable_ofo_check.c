
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_sock {scalar_t__ syn_fastopen_ch; int out_of_order_queue; int data_segs_in; int syn_fastopen; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_8__ {int tcp_flags; } ;
struct TYPE_6__ {int tfo_active_disable_times; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;
struct TYPE_5__ {int flags; } ;


 int IFF_LOOPBACK ;
 int TCPHDR_FIN ;
 TYPE_4__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* sk_dst_get (struct sock*) ;
 struct sk_buff* skb_rb_first (int *) ;
 int skb_rb_next (struct sk_buff*) ;
 TYPE_3__* sock_net (struct sock*) ;
 int tcp_fastopen_active_disable (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_fastopen_active_disable_ofo_check(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct dst_entry *dst;
 struct sk_buff *skb;

 if (!tp->syn_fastopen)
  return;

 if (!tp->data_segs_in) {
  skb = skb_rb_first(&tp->out_of_order_queue);
  if (skb && !skb_rb_next(skb)) {
   if (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN) {
    tcp_fastopen_active_disable(sk);
    return;
   }
  }
 } else if (tp->syn_fastopen_ch &&
     atomic_read(&sock_net(sk)->ipv4.tfo_active_disable_times)) {
  dst = sk_dst_get(sk);
  if (!(dst && dst->dev && (dst->dev->flags & IFF_LOOPBACK)))
   atomic_set(&sock_net(sk)->ipv4.tfo_active_disable_times, 0);
  dst_release(dst);
 }
}
