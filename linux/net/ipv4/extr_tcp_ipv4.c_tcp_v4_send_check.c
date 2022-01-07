
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_sock {int inet_daddr; int inet_saddr; } ;


 int __tcp_v4_send_check (struct sk_buff*,int ,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;

void tcp_v4_send_check(struct sock *sk, struct sk_buff *skb)
{
 const struct inet_sock *inet = inet_sk(sk);

 __tcp_v4_send_check(skb, inet->inet_saddr, inet->inet_daddr);
}
