
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int xfrm_output_resume (struct sk_buff*,int) ;

__attribute__((used)) static int xfrm_output2(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 return xfrm_output_resume(skb, 1);
}
