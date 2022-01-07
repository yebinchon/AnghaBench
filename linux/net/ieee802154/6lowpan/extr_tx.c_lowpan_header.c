
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wpan_dev {int ackreq; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ mode; int short_addr; } ;
struct lowpan_addr_info {int saddr; TYPE_2__ daddr; } ;
struct ieee802154_mac_cb {int ackreq; int type; } ;
typedef int info ;
struct TYPE_7__ {TYPE_1__* wdev; } ;
struct TYPE_5__ {struct wpan_dev* ieee802154_ptr; } ;


 scalar_t__ IEEE802154_ADDR_SHORT ;
 int IEEE802154_FC_TYPE_DATA ;
 scalar_t__ ieee802154_is_broadcast_short_addr (int ) ;
 TYPE_4__* lowpan_802154_dev (struct net_device*) ;
 int lowpan_header_compress (struct sk_buff*,struct net_device*,TYPE_2__*,int *) ;
 int lowpan_skb_priv (struct sk_buff*) ;
 struct ieee802154_mac_cb* mac_cb_init (struct sk_buff*) ;
 int memcpy (struct lowpan_addr_info*,int ,int) ;
 scalar_t__ skb_network_header_len (struct sk_buff*) ;
 int wpan_dev_hard_header (struct sk_buff*,TYPE_1__*,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int lowpan_header(struct sk_buff *skb, struct net_device *ldev,
    u16 *dgram_size, u16 *dgram_offset)
{
 struct wpan_dev *wpan_dev = lowpan_802154_dev(ldev)->wdev->ieee802154_ptr;
 struct ieee802154_mac_cb *cb = mac_cb_init(skb);
 struct lowpan_addr_info info;

 memcpy(&info, lowpan_skb_priv(skb), sizeof(info));

 *dgram_size = skb->len;
 lowpan_header_compress(skb, ldev, &info.daddr, &info.saddr);

 *dgram_offset = (*dgram_size - skb->len) + skb_network_header_len(skb);

 cb->type = IEEE802154_FC_TYPE_DATA;

 if (info.daddr.mode == IEEE802154_ADDR_SHORT &&
     ieee802154_is_broadcast_short_addr(info.daddr.short_addr))
  cb->ackreq = 0;
 else
  cb->ackreq = wpan_dev->ackreq;

 return wpan_dev_hard_header(skb, lowpan_802154_dev(ldev)->wdev,
        &info.daddr, &info.saddr, 0);
}
