
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_uid; int sk_mark; int sk_bound_dev_if; } ;
struct sk_buff {int dummy; } ;


 int ip6_redirect (struct sk_buff*,int ,int ,int ,int ) ;
 int sock_net (struct sock*) ;

void ip6_sk_redirect(struct sk_buff *skb, struct sock *sk)
{
 ip6_redirect(skb, sock_net(sk), sk->sk_bound_dev_if, sk->sk_mark,
       sk->sk_uid);
}
