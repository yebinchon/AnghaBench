
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static struct sk_buff *qpolicy_simple_top(struct sock *sk)
{
 return skb_peek(&sk->sk_write_queue);
}
