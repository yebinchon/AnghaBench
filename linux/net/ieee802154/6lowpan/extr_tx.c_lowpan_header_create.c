
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wpan_dev {int extended_addr; void* short_addr; int pan_id; } ;
struct sk_buff {int dummy; } ;
struct net_device {int broadcast; } ;
struct neighbour {int lock; } ;
struct TYPE_7__ {int extended_addr; void* mode; void* short_addr; int pan_id; } ;
struct TYPE_6__ {int extended_addr; void* mode; void* short_addr; int pan_id; } ;
struct lowpan_addr_info {TYPE_3__ saddr; TYPE_2__ daddr; } ;
struct lowpan_802154_neigh {void* short_addr; } ;
struct ipv6hdr {int daddr; } ;
typedef void* __le16 ;
struct TYPE_8__ {TYPE_1__* wdev; } ;
struct TYPE_5__ {struct wpan_dev* ieee802154_ptr; } ;


 int EINVAL ;
 unsigned short ETH_P_IPV6 ;
 int EUI64_ADDR_LEN ;
 int IEEE802154_ADDR_BROADCAST ;
 void* IEEE802154_ADDR_LONG ;
 void* IEEE802154_ADDR_SHORT ;
 int IEEE802154_ADDR_SHORT_UNSPEC ;
 void* cpu_to_le16 (int ) ;
 int ieee802154_be64_to_le64 (int *,void const*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 TYPE_4__* lowpan_802154_dev (struct net_device*) ;
 scalar_t__ lowpan_802154_is_valid_src_short_addr (void*) ;
 struct lowpan_802154_neigh* lowpan_802154_neigh (int ) ;
 struct lowpan_addr_info* lowpan_skb_priv (struct sk_buff*) ;
 int memcmp (void const*,int ,int ) ;
 int nd_tbl ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int neighbour_priv (struct neighbour*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int lowpan_header_create(struct sk_buff *skb, struct net_device *ldev,
    unsigned short type, const void *daddr,
    const void *saddr, unsigned int len)
{
 struct wpan_dev *wpan_dev = lowpan_802154_dev(ldev)->wdev->ieee802154_ptr;
 struct lowpan_addr_info *info = lowpan_skb_priv(skb);
 struct lowpan_802154_neigh *llneigh = ((void*)0);
 const struct ipv6hdr *hdr = ipv6_hdr(skb);
 struct neighbour *n;

 if (!daddr)
  return -EINVAL;




 if (type != ETH_P_IPV6)
  return 0;


 info->saddr.pan_id = wpan_dev->pan_id;
 info->daddr.pan_id = info->saddr.pan_id;

 if (!memcmp(daddr, ldev->broadcast, EUI64_ADDR_LEN)) {
  info->daddr.short_addr = cpu_to_le16(IEEE802154_ADDR_BROADCAST);
  info->daddr.mode = IEEE802154_ADDR_SHORT;
 } else {
  __le16 short_addr = cpu_to_le16(IEEE802154_ADDR_SHORT_UNSPEC);

  n = neigh_lookup(&nd_tbl, &hdr->daddr, ldev);
  if (n) {
   llneigh = lowpan_802154_neigh(neighbour_priv(n));
   read_lock_bh(&n->lock);
   short_addr = llneigh->short_addr;
   read_unlock_bh(&n->lock);
  }

  if (llneigh &&
      lowpan_802154_is_valid_src_short_addr(short_addr)) {
   info->daddr.short_addr = short_addr;
   info->daddr.mode = IEEE802154_ADDR_SHORT;
  } else {
   info->daddr.mode = IEEE802154_ADDR_LONG;
   ieee802154_be64_to_le64(&info->daddr.extended_addr,
      daddr);
  }

  if (n)
   neigh_release(n);
 }

 if (!saddr) {
  if (lowpan_802154_is_valid_src_short_addr(wpan_dev->short_addr)) {
   info->saddr.mode = IEEE802154_ADDR_SHORT;
   info->saddr.short_addr = wpan_dev->short_addr;
  } else {
   info->saddr.mode = IEEE802154_ADDR_LONG;
   info->saddr.extended_addr = wpan_dev->extended_addr;
  }
 } else {
  info->saddr.mode = IEEE802154_ADDR_LONG;
  ieee802154_be64_to_le64(&info->saddr.extended_addr, saddr);
 }

 return 0;
}
