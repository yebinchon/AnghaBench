
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int pkt_type; struct net_device* dev; scalar_t__ data; } ;
struct net_device {int flags; int dev_addr; int broadcast; } ;
struct TYPE_5__ {int ethertype; } ;
struct TYPE_4__ {int dsap; } ;
struct TYPE_6__ {TYPE_2__ llc_snap; TYPE_1__ llc_8022_1; } ;
struct fddihdr {int* daddr; TYPE_3__ hdr; } ;
typedef int __be16 ;


 int ETH_P_802_2 ;
 scalar_t__ FDDI_K_8022_HLEN ;
 int FDDI_K_ALEN ;
 scalar_t__ FDDI_K_SNAP_HLEN ;
 int IFF_PROMISC ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int PACKET_OTHERHOST ;
 int htons (int ) ;
 scalar_t__ memcmp (int*,int ,int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__be16 fddi_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 struct fddihdr *fddi = (struct fddihdr *)skb->data;
 __be16 type;






 skb->dev = dev;
 skb_reset_mac_header(skb);

 if(fddi->hdr.llc_8022_1.dsap==0xe0)
 {
  skb_pull(skb, FDDI_K_8022_HLEN-3);
  type = htons(ETH_P_802_2);
 }
 else
 {
  skb_pull(skb, FDDI_K_SNAP_HLEN);
  type=fddi->hdr.llc_snap.ethertype;
 }



 if (*fddi->daddr & 0x01)
 {
  if (memcmp(fddi->daddr, dev->broadcast, FDDI_K_ALEN) == 0)
   skb->pkt_type = PACKET_BROADCAST;
  else
   skb->pkt_type = PACKET_MULTICAST;
 }

 else if (dev->flags & IFF_PROMISC)
 {
  if (memcmp(fddi->daddr, dev->dev_addr, FDDI_K_ALEN))
   skb->pkt_type = PACKET_OTHERHOST;
 }



 return type;
}
