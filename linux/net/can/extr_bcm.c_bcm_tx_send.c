
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int ifindex; } ;
struct msghdr {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int ifindex; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MHSIZ ;
 struct sk_buff* alloc_skb (int,int ) ;
 int can_send (struct sk_buff*,int) ;
 TYPE_1__* can_skb_prv (struct sk_buff*) ;
 int can_skb_reserve (struct sk_buff*) ;
 int can_skb_set_owner (struct sk_buff*,struct sock*) ;
 struct net_device* dev_get_by_index (int ,int) ;
 int dev_put (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_from_msg (int ,struct msghdr*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int bcm_tx_send(struct msghdr *msg, int ifindex, struct sock *sk,
         int cfsiz)
{
 struct sk_buff *skb;
 struct net_device *dev;
 int err;


 if (!ifindex)
  return -ENODEV;

 skb = alloc_skb(cfsiz + sizeof(struct can_skb_priv), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 can_skb_reserve(skb);

 err = memcpy_from_msg(skb_put(skb, cfsiz), msg, cfsiz);
 if (err < 0) {
  kfree_skb(skb);
  return err;
 }

 dev = dev_get_by_index(sock_net(sk), ifindex);
 if (!dev) {
  kfree_skb(skb);
  return -ENODEV;
 }

 can_skb_prv(skb)->ifindex = dev->ifindex;
 can_skb_prv(skb)->skbcnt = 0;
 skb->dev = dev;
 can_skb_set_owner(skb, sk);
 err = can_send(skb, 1);
 dev_put(dev);

 if (err)
  return err;

 return cfsiz + MHSIZ;
}
