
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mac_len; int priority; struct net_device* dev; } ;
struct net_device {scalar_t__ needed_headroom; scalar_t__ needed_tailroom; } ;
struct ieee802154_hdr {int source; int dest; } ;
struct TYPE_2__ {struct net_device* wdev; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (struct sk_buff*) ;
 TYPE_1__* lowpan_802154_dev (struct net_device*) ;
 int * mac_cb (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int wpan_dev_hard_header (struct sk_buff*,struct net_device*,int *,int *,int) ;

__attribute__((used)) static struct sk_buff*
lowpan_alloc_frag(struct sk_buff *skb, int size,
    const struct ieee802154_hdr *master_hdr, bool frag1)
{
 struct net_device *wdev = lowpan_802154_dev(skb->dev)->wdev;
 struct sk_buff *frag;
 int rc;

 frag = alloc_skb(wdev->needed_headroom + wdev->needed_tailroom + size,
    GFP_ATOMIC);

 if (likely(frag)) {
  frag->dev = wdev;
  frag->priority = skb->priority;
  skb_reserve(frag, wdev->needed_headroom);
  skb_reset_network_header(frag);
  *mac_cb(frag) = *mac_cb(skb);

  if (frag1) {
   skb_put_data(frag, skb_mac_header(skb), skb->mac_len);
  } else {
   rc = wpan_dev_hard_header(frag, wdev,
        &master_hdr->dest,
        &master_hdr->source, size);
   if (rc < 0) {
    kfree_skb(frag);
    return ERR_PTR(rc);
   }
  }
 } else {
  frag = ERR_PTR(-ENOMEM);
 }

 return frag;
}
