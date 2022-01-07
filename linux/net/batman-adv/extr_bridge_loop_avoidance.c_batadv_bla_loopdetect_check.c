
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ethhdr {int h_source; } ;
struct TYPE_4__ {int loopdetect_lasttime; int loopdetect_addr; } ;
struct batadv_priv {TYPE_2__ bla; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct batadv_bla_backbone_gw {int report_work; } ;
struct TYPE_3__ {int dev_addr; } ;


 int BATADV_BLA_LOOPDETECT_TIMEOUT ;
 int batadv_backbone_gw_put (struct batadv_bla_backbone_gw*) ;
 struct batadv_bla_backbone_gw* batadv_bla_get_backbone_gw (struct batadv_priv*,int ,unsigned short,int) ;
 int batadv_compare_eth (int ,int ) ;
 int batadv_event_workqueue ;
 scalar_t__ batadv_has_timed_out (int ,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int queue_work (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
batadv_bla_loopdetect_check(struct batadv_priv *bat_priv, struct sk_buff *skb,
       struct batadv_hard_iface *primary_if,
       unsigned short vid)
{
 struct batadv_bla_backbone_gw *backbone_gw;
 struct ethhdr *ethhdr;
 bool ret;

 ethhdr = eth_hdr(skb);




 if (!batadv_compare_eth(ethhdr->h_source,
    bat_priv->bla.loopdetect_addr))
  return 0;




 if (batadv_has_timed_out(bat_priv->bla.loopdetect_lasttime,
     BATADV_BLA_LOOPDETECT_TIMEOUT))
  return 1;

 backbone_gw = batadv_bla_get_backbone_gw(bat_priv,
       primary_if->net_dev->dev_addr,
       vid, 1);
 if (unlikely(!backbone_gw))
  return 1;

 ret = queue_work(batadv_event_workqueue, &backbone_gw->report_work);




 if (!ret)
  batadv_backbone_gw_put(backbone_gw);

 return 1;
}
