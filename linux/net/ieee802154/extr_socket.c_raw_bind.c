
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ieee802154 {scalar_t__ family; int addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; } ;
struct net_device {int ifindex; } ;
struct ieee802154_addr {int dummy; } ;


 scalar_t__ AF_IEEE802154 ;
 int EINVAL ;
 int ENODEV ;
 int dev_put (struct net_device*) ;
 int ieee802154_addr_from_sa (struct ieee802154_addr*,int *) ;
 struct net_device* ieee802154_get_dev (int ,struct ieee802154_addr*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_dst_reset (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int raw_bind(struct sock *sk, struct sockaddr *_uaddr, int len)
{
 struct ieee802154_addr addr;
 struct sockaddr_ieee802154 *uaddr = (struct sockaddr_ieee802154 *)_uaddr;
 int err = 0;
 struct net_device *dev = ((void*)0);

 if (len < sizeof(*uaddr))
  return -EINVAL;

 uaddr = (struct sockaddr_ieee802154 *)_uaddr;
 if (uaddr->family != AF_IEEE802154)
  return -EINVAL;

 lock_sock(sk);

 ieee802154_addr_from_sa(&addr, &uaddr->addr);
 dev = ieee802154_get_dev(sock_net(sk), &addr);
 if (!dev) {
  err = -ENODEV;
  goto out;
 }

 sk->sk_bound_dev_if = dev->ifindex;
 sk_dst_reset(sk);

 dev_put(dev);
out:
 release_sock(sk);

 return err;
}
