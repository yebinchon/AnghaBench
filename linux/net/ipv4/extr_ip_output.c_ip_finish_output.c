
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int BPF_CGROUP_RUN_PROG_INET_EGRESS (struct sock*,struct sk_buff*) ;


 int __ip_finish_output (struct net*,struct sock*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int ip_finish_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 int ret;

 ret = BPF_CGROUP_RUN_PROG_INET_EGRESS(sk, skb);
 switch (ret) {
 case 128:
  return __ip_finish_output(net, sk, skb);
 case 129:
  return __ip_finish_output(net, sk, skb) ? : ret;
 default:
  kfree_skb(skb);
  return ret;
 }
}
