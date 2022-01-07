
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct lowpan_peer {int * lladdr; } ;


 int lowpan_header_decompress (struct sk_buff*,struct net_device*,int ,int const*) ;

__attribute__((used)) static int iphc_decompress(struct sk_buff *skb, struct net_device *netdev,
      struct lowpan_peer *peer)
{
 const u8 *saddr;

 saddr = peer->lladdr;

 return lowpan_header_decompress(skb, netdev, netdev->dev_addr, saddr);
}
