
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_roam_adv {int vid; int client; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int last_ttvn; } ;


 int BATADV_CNT_TT_ROAM_ADV_RX ;
 int BATADV_DBG_TT ;
 int BATADV_TT_CLIENT_ROAM ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ atomic_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *,int ) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 int batadv_is_my_mac (struct batadv_priv*,int *) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int *) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_tt_global_add (struct batadv_priv*,struct batadv_orig_node*,int ,int ,int ,scalar_t__) ;
 int ntohs (int ) ;

__attribute__((used)) static int batadv_roam_tvlv_unicast_handler_v1(struct batadv_priv *bat_priv,
            u8 *src, u8 *dst,
            void *tvlv_value,
            u16 tvlv_value_len)
{
 struct batadv_tvlv_roam_adv *roaming_adv;
 struct batadv_orig_node *orig_node = ((void*)0);





 if (!batadv_is_my_mac(bat_priv, dst))
  return NET_RX_DROP;

 if (tvlv_value_len < sizeof(*roaming_adv))
  goto out;

 orig_node = batadv_orig_hash_find(bat_priv, src);
 if (!orig_node)
  goto out;

 batadv_inc_counter(bat_priv, BATADV_CNT_TT_ROAM_ADV_RX);
 roaming_adv = (struct batadv_tvlv_roam_adv *)tvlv_value;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Received ROAMING_ADV from %pM (client %pM)\n",
     src, roaming_adv->client);

 batadv_tt_global_add(bat_priv, orig_node, roaming_adv->client,
        ntohs(roaming_adv->vid), BATADV_TT_CLIENT_ROAM,
        atomic_read(&orig_node->last_ttvn) + 1);

out:
 if (orig_node)
  batadv_orig_node_put(orig_node);
 return NET_RX_SUCCESS;
}
