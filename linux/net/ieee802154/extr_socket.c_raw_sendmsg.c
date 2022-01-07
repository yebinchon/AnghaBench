
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_bound_dev_if; } ;
struct sk_buff {int protocol; struct net_device* dev; } ;
struct net_device {size_t name; int needed_tailroom; } ;
struct msghdr {int msg_flags; } ;


 int ARPHRD_IEEE802154 ;
 int EMSGSIZE ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int ETH_P_IEEE802154 ;
 unsigned int IEEE802154_MTU ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 struct net_device* dev_get_by_index (int ,int ) ;
 struct net_device* dev_getfirstbyhwtype (int ,int ) ;
 int dev_put (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy_from_msg (int ,struct msghdr*,size_t) ;
 int net_xmit_errno (int) ;
 int pr_debug (char*,...) ;
 int release_sock (struct sock*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int,int*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int raw_sendmsg(struct sock *sk, struct msghdr *msg, size_t size)
{
 struct net_device *dev;
 unsigned int mtu;
 struct sk_buff *skb;
 int hlen, tlen;
 int err;

 if (msg->msg_flags & MSG_OOB) {
  pr_debug("msg->msg_flags = 0x%x\n", msg->msg_flags);
  return -EOPNOTSUPP;
 }

 lock_sock(sk);
 if (!sk->sk_bound_dev_if)
  dev = dev_getfirstbyhwtype(sock_net(sk), ARPHRD_IEEE802154);
 else
  dev = dev_get_by_index(sock_net(sk), sk->sk_bound_dev_if);
 release_sock(sk);

 if (!dev) {
  pr_debug("no dev\n");
  err = -ENXIO;
  goto out;
 }

 mtu = IEEE802154_MTU;
 pr_debug("name = %s, mtu = %u\n", dev->name, mtu);

 if (size > mtu) {
  pr_debug("size = %zu, mtu = %u\n", size, mtu);
  err = -EMSGSIZE;
  goto out_dev;
 }

 hlen = LL_RESERVED_SPACE(dev);
 tlen = dev->needed_tailroom;
 skb = sock_alloc_send_skb(sk, hlen + tlen + size,
      msg->msg_flags & MSG_DONTWAIT, &err);
 if (!skb)
  goto out_dev;

 skb_reserve(skb, hlen);

 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);

 err = memcpy_from_msg(skb_put(skb, size), msg, size);
 if (err < 0)
  goto out_skb;

 skb->dev = dev;
 skb->protocol = htons(ETH_P_IEEE802154);

 err = dev_queue_xmit(skb);
 if (err > 0)
  err = net_xmit_errno(err);

 dev_put(dev);

 return err ?: size;

out_skb:
 kfree_skb(skb);
out_dev:
 dev_put(dev);
out:
 return err;
}
