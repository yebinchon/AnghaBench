
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {int flags; scalar_t__ tgt_index; } ;


 int EINVAL ;
 int __bpf_redirect (struct sk_buff*,struct net_device*,int ) ;
 int bpf_redirect_info ;
 struct net_device* dev_get_by_index_rcu (int ,scalar_t__) ;
 int dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct bpf_redirect_info* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

int skb_do_redirect(struct sk_buff *skb)
{
 struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 struct net_device *dev;

 dev = dev_get_by_index_rcu(dev_net(skb->dev), ri->tgt_index);
 ri->tgt_index = 0;
 if (unlikely(!dev)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 return __bpf_redirect(skb, dev, ri->flags);
}
