
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int offload_fwd_mark; scalar_t__ len; int dev; } ;
struct net_device {int dummy; } ;


 int dsa_master_find_slave (struct net_device*,int ,unsigned int) ;
 int pskb_trim_rcsum (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *ksz_common_rcv(struct sk_buff *skb,
          struct net_device *dev,
          unsigned int port, unsigned int len)
{
 skb->dev = dsa_master_find_slave(dev, 0, port);
 if (!skb->dev)
  return ((void*)0);

 pskb_trim_rcsum(skb, skb->len - len);

 skb->offload_fwd_mark = 1;

 return skb;
}
