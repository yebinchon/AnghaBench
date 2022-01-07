
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int dev_queue_xmit (struct sk_buff*) ;

__attribute__((used)) static int arp_xmit_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 return dev_queue_xmit(skb);
}
