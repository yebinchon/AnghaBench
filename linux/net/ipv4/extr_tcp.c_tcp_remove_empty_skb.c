
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;


 int TCP_CHRONO_BUSY ;
 int sk_wmem_free_skb (struct sock*,struct sk_buff*) ;
 int tcp_chrono_stop (struct sock*,int ) ;
 int tcp_unlink_write_queue (struct sk_buff*,struct sock*) ;
 scalar_t__ tcp_write_queue_empty (struct sock*) ;

__attribute__((used)) static void tcp_remove_empty_skb(struct sock *sk, struct sk_buff *skb)
{
 if (skb && !skb->len) {
  tcp_unlink_write_queue(skb, sk);
  if (tcp_write_queue_empty(sk))
   tcp_chrono_stop(sk, TCP_CHRONO_BUSY);
  sk_wmem_free_skb(sk, skb);
 }
}
