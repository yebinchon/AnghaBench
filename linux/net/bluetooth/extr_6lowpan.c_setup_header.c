
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lowpan_peer {TYPE_1__* chan; int * lladdr; } ;
struct lowpan_btle_dev {TYPE_2__* netdev; } ;
struct ipv6hdr {int daddr; } ;
struct in6_addr {int dummy; } ;
typedef int ipv6_daddr ;
typedef int bdaddr_t ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int dev_addr; } ;
struct TYPE_4__ {int dst_type; int dst; } ;


 int BT_DBG (char*,...) ;
 int ENOENT ;
 int ETH_P_IPV6 ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int *,int *,int ) ;
 scalar_t__ ipv6_addr_is_multicast (struct in6_addr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 struct lowpan_btle_dev* lowpan_btle_dev (struct net_device*) ;
 TYPE_3__* lowpan_cb (struct sk_buff*) ;
 int lowpan_header_compress (struct sk_buff*,struct net_device*,int *,int ) ;
 int memcpy (struct in6_addr*,int *,int) ;
 struct lowpan_peer* peer_lookup_dst (struct lowpan_btle_dev*,struct in6_addr*,struct sk_buff*) ;

__attribute__((used)) static int setup_header(struct sk_buff *skb, struct net_device *netdev,
   bdaddr_t *peer_addr, u8 *peer_addr_type)
{
 struct in6_addr ipv6_daddr;
 struct ipv6hdr *hdr;
 struct lowpan_btle_dev *dev;
 struct lowpan_peer *peer;
 u8 *daddr;
 int err, status = 0;

 hdr = ipv6_hdr(skb);

 dev = lowpan_btle_dev(netdev);

 memcpy(&ipv6_daddr, &hdr->daddr, sizeof(ipv6_daddr));

 if (ipv6_addr_is_multicast(&ipv6_daddr)) {
  lowpan_cb(skb)->chan = ((void*)0);
  daddr = ((void*)0);
 } else {
  BT_DBG("dest IP %pI6c", &ipv6_daddr);






  peer = peer_lookup_dst(dev, &ipv6_daddr, skb);
  if (!peer) {
   BT_DBG("no such peer");
   return -ENOENT;
  }

  daddr = peer->lladdr;
  *peer_addr = peer->chan->dst;
  *peer_addr_type = peer->chan->dst_type;
  lowpan_cb(skb)->chan = peer->chan;

  status = 1;
 }

 lowpan_header_compress(skb, netdev, daddr, dev->netdev->dev_addr);

 err = dev_hard_header(skb, netdev, ETH_P_IPV6, ((void*)0), ((void*)0), 0);
 if (err < 0)
  return err;

 return status;
}
