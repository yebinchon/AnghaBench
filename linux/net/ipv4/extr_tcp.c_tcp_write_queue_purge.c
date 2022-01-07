
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {struct sk_buff* sk_tx_skb_cache; int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ icsk_backoff; } ;
struct TYPE_4__ {scalar_t__ packets_out; int tsorted_sent_queue; } ;


 int INIT_LIST_HEAD (int *) ;
 int TCP_CHRONO_BUSY ;
 int __kfree_skb (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_wmem_free_skb (struct sock*,struct sk_buff*) ;
 int tcp_chrono_stop (struct sock*,int ) ;
 int tcp_clear_all_retrans_hints (TYPE_1__*) ;
 int tcp_rtx_queue_purge (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_skb_tsorted_anchor_cleanup (struct sk_buff*) ;

void tcp_write_queue_purge(struct sock *sk)
{
 struct sk_buff *skb;

 tcp_chrono_stop(sk, TCP_CHRONO_BUSY);
 while ((skb = __skb_dequeue(&sk->sk_write_queue)) != ((void*)0)) {
  tcp_skb_tsorted_anchor_cleanup(skb);
  sk_wmem_free_skb(sk, skb);
 }
 tcp_rtx_queue_purge(sk);
 skb = sk->sk_tx_skb_cache;
 if (skb) {
  __kfree_skb(skb);
  sk->sk_tx_skb_cache = ((void*)0);
 }
 INIT_LIST_HEAD(&tcp_sk(sk)->tsorted_sent_queue);
 sk_mem_reclaim(sk);
 tcp_clear_all_retrans_hints(tcp_sk(sk));
 tcp_sk(sk)->packets_out = 0;
 inet_csk(sk)->icsk_backoff = 0;
}
