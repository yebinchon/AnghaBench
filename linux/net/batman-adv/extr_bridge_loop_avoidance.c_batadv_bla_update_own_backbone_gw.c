
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct batadv_bla_backbone_gw {int lasttime; } ;
struct TYPE_2__ {int dev_addr; } ;


 int batadv_backbone_gw_put (struct batadv_bla_backbone_gw*) ;
 struct batadv_bla_backbone_gw* batadv_bla_get_backbone_gw (struct batadv_priv*,int ,unsigned short,int) ;
 int jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
batadv_bla_update_own_backbone_gw(struct batadv_priv *bat_priv,
      struct batadv_hard_iface *primary_if,
      unsigned short vid)
{
 struct batadv_bla_backbone_gw *backbone_gw;

 backbone_gw = batadv_bla_get_backbone_gw(bat_priv,
       primary_if->net_dev->dev_addr,
       vid, 1);
 if (unlikely(!backbone_gw))
  return;

 backbone_gw->lasttime = jiffies;
 batadv_backbone_gw_put(backbone_gw);
}
