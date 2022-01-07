
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {unsigned int aggr_len; int aggr_list; int aggr_list_lock; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ NET_IP_ALIGN ;
 int batadv_v_ogm_aggr_list_free (struct batadv_hard_iface*) ;
 unsigned int batadv_v_ogm_len (struct sk_buff*) ;
 int batadv_v_ogm_send_to_if (struct sk_buff*,struct batadv_hard_iface*) ;
 int consume_skb (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_put_data (struct sk_buff*,int ,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
{
 unsigned int aggr_len = hard_iface->bat_v.aggr_len;
 struct sk_buff *skb_aggr;
 unsigned int ogm_len;
 struct sk_buff *skb;

 lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);

 if (!aggr_len)
  return;

 skb_aggr = dev_alloc_skb(aggr_len + ETH_HLEN + NET_IP_ALIGN);
 if (!skb_aggr) {
  batadv_v_ogm_aggr_list_free(hard_iface);
  return;
 }

 skb_reserve(skb_aggr, ETH_HLEN + NET_IP_ALIGN);
 skb_reset_network_header(skb_aggr);

 while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list))) {
  hard_iface->bat_v.aggr_len -= batadv_v_ogm_len(skb);

  ogm_len = batadv_v_ogm_len(skb);
  skb_put_data(skb_aggr, skb->data, ogm_len);

  consume_skb(skb);
 }

 batadv_v_ogm_send_to_if(skb_aggr, hard_iface);
}
