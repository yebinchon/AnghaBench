
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int tvlv_roam ;
struct batadv_tvlv_roam_adv {int vid; int client; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int BATADV_CNT_TT_ROAM_ADV_TX ;
 int BATADV_DBG_TT ;
 int BATADV_TVLV_ROAM ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int *,int ) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_print_vid (unsigned short) ;
 int batadv_tt_check_roam_count (struct batadv_priv*,int *) ;
 int batadv_tvlv_unicast_send (struct batadv_priv*,int ,int ,int ,int,struct batadv_tvlv_roam_adv*,int) ;
 int htons (unsigned short) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void batadv_send_roam_adv(struct batadv_priv *bat_priv, u8 *client,
     unsigned short vid,
     struct batadv_orig_node *orig_node)
{
 struct batadv_hard_iface *primary_if;
 struct batadv_tvlv_roam_adv tvlv_roam;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto out;




 if (!batadv_tt_check_roam_count(bat_priv, client))
  goto out;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Sending ROAMING_ADV to %pM (client %pM, vid: %d)\n",
     orig_node->orig, client, batadv_print_vid(vid));

 batadv_inc_counter(bat_priv, BATADV_CNT_TT_ROAM_ADV_TX);

 memcpy(tvlv_roam.client, client, sizeof(tvlv_roam.client));
 tvlv_roam.vid = htons(vid);

 batadv_tvlv_unicast_send(bat_priv, primary_if->net_dev->dev_addr,
     orig_node->orig, BATADV_TVLV_ROAM, 1,
     &tvlv_roam, sizeof(tvlv_roam));

out:
 if (primary_if)
  batadv_hardif_put(primary_if);
}
