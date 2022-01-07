
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int flags; int needs_free_netdev; int features; int * header_ops; int * netdev_ops; int priv_flags; int broadcast; } ;
struct ipv6hdr {int dummy; } ;


 int IEEE802154_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_NO_QUEUE ;
 int NETIF_F_NETNS_LOCAL ;
 int lowpan_header_ops ;
 int lowpan_netdev_ops ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void lowpan_setup(struct net_device *ldev)
{
 memset(ldev->broadcast, 0xff, IEEE802154_ADDR_LEN);

 ldev->hard_header_len = sizeof(struct ipv6hdr);
 ldev->flags = IFF_BROADCAST | IFF_MULTICAST;
 ldev->priv_flags |= IFF_NO_QUEUE;

 ldev->netdev_ops = &lowpan_netdev_ops;
 ldev->header_ops = &lowpan_header_ops;
 ldev->needs_free_netdev = 1;
 ldev->features |= NETIF_F_NETNS_LOCAL;
}
