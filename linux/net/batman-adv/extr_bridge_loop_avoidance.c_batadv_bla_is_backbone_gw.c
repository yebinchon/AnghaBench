
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct batadv_orig_node {int orig; TYPE_1__* bat_priv; } ;
struct batadv_bla_backbone_gw {int dummy; } ;
struct TYPE_2__ {int bridge_loop_avoidance; } ;


 scalar_t__ ETH_HLEN ;
 int atomic_read (int *) ;
 int batadv_backbone_gw_put (struct batadv_bla_backbone_gw*) ;
 struct batadv_bla_backbone_gw* batadv_backbone_hash_find (TYPE_1__*,int ,unsigned short) ;
 unsigned short batadv_get_vid (struct sk_buff*,int) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;

bool batadv_bla_is_backbone_gw(struct sk_buff *skb,
          struct batadv_orig_node *orig_node, int hdr_size)
{
 struct batadv_bla_backbone_gw *backbone_gw;
 unsigned short vid;

 if (!atomic_read(&orig_node->bat_priv->bridge_loop_avoidance))
  return 0;


 if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
  return 0;

 vid = batadv_get_vid(skb, hdr_size);


 backbone_gw = batadv_backbone_hash_find(orig_node->bat_priv,
      orig_node->orig, vid);
 if (!backbone_gw)
  return 0;

 batadv_backbone_gw_put(backbone_gw);
 return 1;
}
