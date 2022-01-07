
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_vlan_data {int dummy; } ;
struct batadv_tvlv_tt_data {int ttvn; int num_vlan; } ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 int batadv_tt_entries (int) ;
 int batadv_tt_update_orig (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_tt_vlan_data*,int,struct batadv_tvlv_tt_change*,int,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static void batadv_tt_tvlv_ogm_handler_v1(struct batadv_priv *bat_priv,
       struct batadv_orig_node *orig,
       u8 flags, void *tvlv_value,
       u16 tvlv_value_len)
{
 struct batadv_tvlv_tt_vlan_data *tt_vlan;
 struct batadv_tvlv_tt_change *tt_change;
 struct batadv_tvlv_tt_data *tt_data;
 u16 num_entries, num_vlan;

 if (tvlv_value_len < sizeof(*tt_data))
  return;

 tt_data = (struct batadv_tvlv_tt_data *)tvlv_value;
 tvlv_value_len -= sizeof(*tt_data);

 num_vlan = ntohs(tt_data->num_vlan);

 if (tvlv_value_len < sizeof(*tt_vlan) * num_vlan)
  return;

 tt_vlan = (struct batadv_tvlv_tt_vlan_data *)(tt_data + 1);
 tt_change = (struct batadv_tvlv_tt_change *)(tt_vlan + num_vlan);
 tvlv_value_len -= sizeof(*tt_vlan) * num_vlan;

 num_entries = batadv_tt_entries(tvlv_value_len);

 batadv_tt_update_orig(bat_priv, orig, tt_vlan, num_vlan, tt_change,
         num_entries, tt_data->ttvn);
}
