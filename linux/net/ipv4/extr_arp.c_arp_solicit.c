
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int priv_flags; int dev_addr; } ;
struct neighbour {int nud_state; int parms; int probes; scalar_t__ primary_key; struct net_device* dev; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ saddr; } ;


 int APP_PROBES ;
 int ARPOP_REQUEST ;
 int ETH_P_ARP ;
 int IFF_XMIT_DST_RELEASE ;
 int IN_DEV_ARP_ANNOUNCE (struct in_device*) ;
 int MAX_ADDR_LEN ;
 scalar_t__ NEIGH_VAR (int ,int ) ;
 int NUD_VALID ;
 int RTN_LOCAL ;
 int RT_SCOPE_LINK ;
 int UCAST_PROBES ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int arp_send_dst (int ,int ,scalar_t__,struct net_device*,scalar_t__,int *,int ,int *,struct dst_entry*) ;
 int atomic_read (int *) ;
 int dev_net (struct net_device*) ;
 int inet_addr_onlink (struct in_device*,scalar_t__,scalar_t__) ;
 int inet_addr_type_dev_table (int ,struct net_device*,scalar_t__) ;
 scalar_t__ inet_select_addr (struct net_device*,scalar_t__,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int neigh_app_ns (struct neighbour*) ;
 int neigh_ha_snapshot (int *,struct neighbour*,struct net_device*) ;
 int pr_debug (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static void arp_solicit(struct neighbour *neigh, struct sk_buff *skb)
{
 __be32 saddr = 0;
 u8 dst_ha[MAX_ADDR_LEN], *dst_hw = ((void*)0);
 struct net_device *dev = neigh->dev;
 __be32 target = *(__be32 *)neigh->primary_key;
 int probes = atomic_read(&neigh->probes);
 struct in_device *in_dev;
 struct dst_entry *dst = ((void*)0);

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);
 if (!in_dev) {
  rcu_read_unlock();
  return;
 }
 switch (IN_DEV_ARP_ANNOUNCE(in_dev)) {
 default:
 case 0:
  if (skb && inet_addr_type_dev_table(dev_net(dev), dev,
       ip_hdr(skb)->saddr) == RTN_LOCAL)
   saddr = ip_hdr(skb)->saddr;
  break;
 case 1:
  if (!skb)
   break;
  saddr = ip_hdr(skb)->saddr;
  if (inet_addr_type_dev_table(dev_net(dev), dev,
          saddr) == RTN_LOCAL) {

   if (inet_addr_onlink(in_dev, target, saddr))
    break;
  }
  saddr = 0;
  break;
 case 2:
  break;
 }
 rcu_read_unlock();

 if (!saddr)
  saddr = inet_select_addr(dev, target, RT_SCOPE_LINK);

 probes -= NEIGH_VAR(neigh->parms, UCAST_PROBES);
 if (probes < 0) {
  if (!(neigh->nud_state & NUD_VALID))
   pr_debug("trying to ucast probe in NUD_INVALID\n");
  neigh_ha_snapshot(dst_ha, neigh, dev);
  dst_hw = dst_ha;
 } else {
  probes -= NEIGH_VAR(neigh->parms, APP_PROBES);
  if (probes < 0) {
   neigh_app_ns(neigh);
   return;
  }
 }

 if (skb && !(dev->priv_flags & IFF_XMIT_DST_RELEASE))
  dst = skb_dst(skb);
 arp_send_dst(ARPOP_REQUEST, ETH_P_ARP, target, dev, saddr,
       dst_hw, dev->dev_addr, ((void*)0), dst);
}
