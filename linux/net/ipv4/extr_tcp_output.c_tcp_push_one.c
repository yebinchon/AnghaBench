
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;
struct sk_buff {unsigned int len; } ;


 int BUG_ON (int) ;
 int TCP_NAGLE_PUSH ;
 struct sk_buff* tcp_send_head (struct sock*) ;
 int tcp_write_xmit (struct sock*,unsigned int,int ,int,int ) ;

void tcp_push_one(struct sock *sk, unsigned int mss_now)
{
 struct sk_buff *skb = tcp_send_head(sk);

 BUG_ON(!skb || skb->len < mss_now);

 tcp_write_xmit(sk, mss_now, TCP_NAGLE_PUSH, 1, sk->sk_allocation);
}
