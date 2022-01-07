
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int ENETDOWN ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ dev_xmit_recursion () ;
 int dev_xmit_recursion_dec () ;
 int dev_xmit_recursion_inc () ;
 int kfree_skb (struct sk_buff*) ;
 int net_crit_ratelimited (char*) ;

__attribute__((used)) static inline int __bpf_tx_skb(struct net_device *dev, struct sk_buff *skb)
{
 int ret;

 if (dev_xmit_recursion()) {
  net_crit_ratelimited("bpf: recursion limit reached on datapath, buggy bpf program?\n");
  kfree_skb(skb);
  return -ENETDOWN;
 }

 skb->dev = dev;

 dev_xmit_recursion_inc();
 ret = dev_queue_xmit(skb);
 dev_xmit_recursion_dec();

 return ret;
}
