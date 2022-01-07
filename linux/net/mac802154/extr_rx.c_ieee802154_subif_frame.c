
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wpan_dev {int extended_addr; int short_addr; int pan_id; } ;
struct sk_buff {scalar_t__ len; TYPE_3__* dev; void* pkt_type; } ;
struct ieee802154_sub_if_data {TYPE_3__* dev; int sec; struct wpan_dev wpan_dev; } ;
struct ieee802154_hdr {int dummy; } ;
typedef int __le16 ;
struct TYPE_5__ {int mode; int short_addr; int pan_id; int extended_addr; } ;
struct TYPE_8__ {int type; TYPE_1__ dest; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; } ;
struct TYPE_7__ {int name; TYPE_2__ stats; } ;


 int IEEE802154_ADDR_BROADCAST ;







 int IEEE802154_PANID_BROADCAST ;
 int NET_RX_DROP ;
 void* PACKET_BROADCAST ;
 void* PACKET_HOST ;
 void* PACKET_OTHERHOST ;
 int cpu_to_le16 (int ) ;
 int ieee802154_deliver_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mac802154_llsec_decrypt (int *,struct sk_buff*) ;
 TYPE_4__* mac_cb (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 int pr_warn_ratelimited (char*,int) ;

__attribute__((used)) static int
ieee802154_subif_frame(struct ieee802154_sub_if_data *sdata,
         struct sk_buff *skb, const struct ieee802154_hdr *hdr)
{
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;
 __le16 span, sshort;
 int rc;

 pr_debug("getting packet via slave interface %s\n", sdata->dev->name);

 span = wpan_dev->pan_id;
 sshort = wpan_dev->short_addr;

 switch (mac_cb(skb)->dest.mode) {
 case 133:
  if (mac_cb(skb)->dest.mode != 133)

   skb->pkt_type = PACKET_OTHERHOST;
  else

   skb->pkt_type = PACKET_HOST;
  break;
 case 134:
  if (mac_cb(skb)->dest.pan_id != span &&
      mac_cb(skb)->dest.pan_id != cpu_to_le16(IEEE802154_PANID_BROADCAST))
   skb->pkt_type = PACKET_OTHERHOST;
  else if (mac_cb(skb)->dest.extended_addr == wpan_dev->extended_addr)
   skb->pkt_type = PACKET_HOST;
  else
   skb->pkt_type = PACKET_OTHERHOST;
  break;
 case 132:
  if (mac_cb(skb)->dest.pan_id != span &&
      mac_cb(skb)->dest.pan_id != cpu_to_le16(IEEE802154_PANID_BROADCAST))
   skb->pkt_type = PACKET_OTHERHOST;
  else if (mac_cb(skb)->dest.short_addr == sshort)
   skb->pkt_type = PACKET_HOST;
  else if (mac_cb(skb)->dest.short_addr ==
     cpu_to_le16(IEEE802154_ADDR_BROADCAST))
   skb->pkt_type = PACKET_BROADCAST;
  else
   skb->pkt_type = PACKET_OTHERHOST;
  break;
 default:
  pr_debug("invalid dest mode\n");
  goto fail;
 }

 skb->dev = sdata->dev;





 rc = mac802154_llsec_decrypt(&sdata->sec, skb);
 if (rc) {
  pr_debug("decryption failed: %i\n", rc);
  goto fail;
 }

 sdata->dev->stats.rx_packets++;
 sdata->dev->stats.rx_bytes += skb->len;

 switch (mac_cb(skb)->type) {
 case 130:
 case 131:
 case 128:
  goto fail;

 case 129:
  return ieee802154_deliver_skb(skb);
 default:
  pr_warn_ratelimited("ieee802154: bad frame received "
        "(type = %d)\n", mac_cb(skb)->type);
  goto fail;
 }

fail:
 kfree_skb(skb);
 return NET_RX_DROP;
}
