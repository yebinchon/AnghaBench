
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; int sk_protocol; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int dontfrag; } ;


 scalar_t__ AF_INET6 ;
 int IPPROTO_RAW ;
 int IPPROTO_UDP ;
 TYPE_1__* inet6_sk (struct sock*) ;

__attribute__((used)) static int xfrm6_local_dontfrag(struct sk_buff *skb)
{
 int proto;
 struct sock *sk = skb->sk;

 if (sk) {
  if (sk->sk_family != AF_INET6)
   return 0;

  proto = sk->sk_protocol;
  if (proto == IPPROTO_UDP || proto == IPPROTO_RAW)
   return inet6_sk(sk)->dontfrag;
 }

 return 0;
}
