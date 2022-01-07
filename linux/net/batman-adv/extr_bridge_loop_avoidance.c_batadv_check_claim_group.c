
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ethhdr {int * h_source; } ;
struct batadv_bla_claim_dst {int type; scalar_t__ group; } ;
struct TYPE_3__ {struct batadv_bla_claim_dst claim_dest; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; } ;
struct TYPE_4__ {int dev_addr; } ;






 int BATADV_DBG_BLA ;
 scalar_t__ batadv_compare_eth (int *,int ) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,scalar_t__) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int *) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 scalar_t__ ntohs (scalar_t__) ;

__attribute__((used)) static int batadv_check_claim_group(struct batadv_priv *bat_priv,
        struct batadv_hard_iface *primary_if,
        u8 *hw_src, u8 *hw_dst,
        struct ethhdr *ethhdr)
{
 u8 *backbone_addr;
 struct batadv_orig_node *orig_node;
 struct batadv_bla_claim_dst *bla_dst, *bla_dst_own;

 bla_dst = (struct batadv_bla_claim_dst *)hw_dst;
 bla_dst_own = &bat_priv->bla.claim_dest;




 switch (bla_dst->type) {
 case 130:
  backbone_addr = hw_src;
  break;
 case 129:
 case 131:
 case 128:
  backbone_addr = ethhdr->h_source;
  break;
 default:
  return 0;
 }


 if (batadv_compare_eth(backbone_addr, primary_if->net_dev->dev_addr))
  return 0;


 if (bla_dst->group == bla_dst_own->group)
  return 2;


 orig_node = batadv_orig_hash_find(bat_priv, backbone_addr);




 if (!orig_node)
  return 1;


 if (ntohs(bla_dst->group) > ntohs(bla_dst_own->group)) {
  batadv_dbg(BATADV_DBG_BLA, bat_priv,
      "taking other backbones claim group: %#.4x\n",
      ntohs(bla_dst->group));
  bla_dst_own->group = bla_dst->group;
 }

 batadv_orig_node_put(orig_node);

 return 2;
}
