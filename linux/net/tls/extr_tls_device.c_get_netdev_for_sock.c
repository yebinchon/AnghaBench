
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;


 int dev_hold (struct net_device*) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ likely (struct dst_entry*) ;
 struct dst_entry* sk_dst_get (struct sock*) ;

__attribute__((used)) static struct net_device *get_netdev_for_sock(struct sock *sk)
{
 struct dst_entry *dst = sk_dst_get(sk);
 struct net_device *netdev = ((void*)0);

 if (likely(dst)) {
  netdev = dst->dev;
  dev_hold(netdev);
 }

 dst_release(dst);

 return netdev;
}
