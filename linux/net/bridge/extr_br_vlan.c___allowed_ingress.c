
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ vlan_proto; scalar_t__ len; scalar_t__ vlan_tci; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int stats; } ;
struct net_bridge {scalar_t__ vlan_proto; } ;
struct br_vlan_stats {int syncp; int rx_packets; int rx_bytes; } ;
struct TYPE_2__ {int vlan_filtered; } ;


 int BROPT_VLAN_STATS_ENABLED ;
 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int ETH_HLEN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ br_get_pvid (struct net_bridge_vlan_group*) ;
 scalar_t__ br_opt_get (struct net_bridge const*,int ) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,scalar_t__) ;
 int br_vlan_get_tag (struct sk_buff*,scalar_t__*) ;
 int br_vlan_should_use (struct net_bridge_vlan*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 struct sk_buff* skb_vlan_untag (struct sk_buff*) ;
 struct br_vlan_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* vlan_insert_tag_set_proto (struct sk_buff*,scalar_t__,int ) ;

__attribute__((used)) static bool __allowed_ingress(const struct net_bridge *br,
         struct net_bridge_vlan_group *vg,
         struct sk_buff *skb, u16 *vid)
{
 struct br_vlan_stats *stats;
 struct net_bridge_vlan *v;
 bool tagged;

 BR_INPUT_SKB_CB(skb)->vlan_filtered = 1;




 if (unlikely(!skb_vlan_tag_present(skb) &&
       skb->protocol == br->vlan_proto)) {
  skb = skb_vlan_untag(skb);
  if (unlikely(!skb))
   return 0;
 }

 if (!br_vlan_get_tag(skb, vid)) {

  if (skb->vlan_proto != br->vlan_proto) {

   skb_push(skb, ETH_HLEN);
   skb = vlan_insert_tag_set_proto(skb, skb->vlan_proto,
       skb_vlan_tag_get(skb));
   if (unlikely(!skb))
    return 0;

   skb_pull(skb, ETH_HLEN);
   skb_reset_mac_len(skb);
   *vid = 0;
   tagged = 0;
  } else {
   tagged = 1;
  }
 } else {

  tagged = 0;
 }

 if (!*vid) {
  u16 pvid = br_get_pvid(vg);





  if (!pvid)
   goto drop;




  *vid = pvid;
  if (likely(!tagged))

   __vlan_hwaccel_put_tag(skb, br->vlan_proto, pvid);
  else





   skb->vlan_tci |= pvid;


  if (!br_opt_get(br, BROPT_VLAN_STATS_ENABLED))
   return 1;
 }
 v = br_vlan_find(vg, *vid);
 if (!v || !br_vlan_should_use(v))
  goto drop;

 if (br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) {
  stats = this_cpu_ptr(v->stats);
  u64_stats_update_begin(&stats->syncp);
  stats->rx_bytes += skb->len;
  stats->rx_packets++;
  u64_stats_update_end(&stats->syncp);
 }

 return 1;

drop:
 kfree_skb(skb);
 return 0;
}
