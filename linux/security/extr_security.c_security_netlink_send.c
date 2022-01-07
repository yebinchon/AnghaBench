
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int call_int_hook (int ,int ,struct sock*,struct sk_buff*) ;
 int netlink_send ;

int security_netlink_send(struct sock *sk, struct sk_buff *skb)
{
 return call_int_hook(netlink_send, 0, sk, skb);
}
