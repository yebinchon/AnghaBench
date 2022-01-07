
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtable {int dst; scalar_t__ rt_iif; } ;
struct net {int loopback_dev; } ;


 int BPF_CGROUP_RUN_PROG_INET_EGRESS (struct sock*,struct sk_buff*) ;


 int dev_loopback_xmit (struct net*,struct sock*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct rtable* rt_dst_clone (int ,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 int skb_rtable (struct sk_buff*) ;

__attribute__((used)) static int ip_mc_finish_output(struct net *net, struct sock *sk,
          struct sk_buff *skb)
{
 struct rtable *new_rt;
 bool do_cn = 0;
 int ret, err;

 ret = BPF_CGROUP_RUN_PROG_INET_EGRESS(sk, skb);
 switch (ret) {
 case 129:
  do_cn = 1;

 case 128:
  break;
 default:
  kfree_skb(skb);
  return ret;
 }





 new_rt = rt_dst_clone(net->loopback_dev, skb_rtable(skb));
 if (new_rt) {
  new_rt->rt_iif = 0;
  skb_dst_drop(skb);
  skb_dst_set(skb, &new_rt->dst);
 }

 err = dev_loopback_xmit(net, sk, skb);
 return (do_cn && err) ? ret : err;
}
