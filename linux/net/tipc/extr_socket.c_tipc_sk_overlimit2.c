
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 unsigned int rcvbuf_limit (struct sock*,struct sk_buff*) ;
 unsigned int sk_rmem_alloc_get (struct sock*) ;

bool tipc_sk_overlimit2(struct sock *sk, struct sk_buff *skb)
{
 unsigned int lim = rcvbuf_limit(sk, skb);
 unsigned int qsize = sk_rmem_alloc_get(sk);

 return (qsize > lim * 90 / 100);
}
