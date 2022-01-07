
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct batadv_bla_backbone_gw {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int BATADV_CLAIM_TYPE_CLAIM ;
 int batadv_backbone_gw_put (struct batadv_bla_backbone_gw*) ;
 int batadv_bla_add_claim (struct batadv_priv*,int *,unsigned short,struct batadv_bla_backbone_gw*) ;
 struct batadv_bla_backbone_gw* batadv_bla_get_backbone_gw (struct batadv_priv*,int *,unsigned short,int) ;
 int batadv_bla_send_claim (struct batadv_priv*,int *,unsigned short,int ) ;
 scalar_t__ batadv_compare_eth (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool batadv_handle_claim(struct batadv_priv *bat_priv,
    struct batadv_hard_iface *primary_if,
    u8 *backbone_addr, u8 *claim_addr,
    unsigned short vid)
{
 struct batadv_bla_backbone_gw *backbone_gw;



 backbone_gw = batadv_bla_get_backbone_gw(bat_priv, backbone_addr, vid,
       0);

 if (unlikely(!backbone_gw))
  return 1;


 batadv_bla_add_claim(bat_priv, claim_addr, vid, backbone_gw);
 if (batadv_compare_eth(backbone_addr, primary_if->net_dev->dev_addr))
  batadv_bla_send_claim(bat_priv, claim_addr, vid,
          BATADV_CLAIM_TYPE_CLAIM);



 batadv_backbone_gw_put(backbone_gw);
 return 1;
}
