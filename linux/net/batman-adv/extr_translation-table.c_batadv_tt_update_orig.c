
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_vlan_data {int dummy; } ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int orig; int tt_lock; int capa_initialized; int last_ttvn; } ;


 int BATADV_DBG_TT ;
 int BATADV_ORIG_CAPA_HAS_TT ;
 int atomic_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int,int,int ) ;
 int batadv_send_tt_request (struct batadv_priv*,struct batadv_orig_node*,int,struct batadv_tvlv_tt_vlan_data*,int ,int) ;
 int batadv_tt_global_check_crc (struct batadv_orig_node*,struct batadv_tvlv_tt_vlan_data*,int ) ;
 int batadv_tt_global_update_crc (struct batadv_priv*,struct batadv_orig_node*) ;
 int batadv_tt_update_changes (struct batadv_priv*,struct batadv_orig_node*,int ,int,struct batadv_tvlv_tt_change*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void batadv_tt_update_orig(struct batadv_priv *bat_priv,
      struct batadv_orig_node *orig_node,
      const void *tt_buff, u16 tt_num_vlan,
      struct batadv_tvlv_tt_change *tt_change,
      u16 tt_num_changes, u8 ttvn)
{
 u8 orig_ttvn = (u8)atomic_read(&orig_node->last_ttvn);
 struct batadv_tvlv_tt_vlan_data *tt_vlan;
 bool full_table = 1;
 bool has_tt_init;

 tt_vlan = (struct batadv_tvlv_tt_vlan_data *)tt_buff;
 has_tt_init = test_bit(BATADV_ORIG_CAPA_HAS_TT,
          &orig_node->capa_initialized);




 if ((!has_tt_init && ttvn == 1) || ttvn - orig_ttvn == 1) {





  if (!tt_num_changes) {
   full_table = 0;
   goto request_table;
  }

  spin_lock_bh(&orig_node->tt_lock);

  batadv_tt_update_changes(bat_priv, orig_node, tt_num_changes,
      ttvn, tt_change);





  batadv_tt_global_update_crc(bat_priv, orig_node);

  spin_unlock_bh(&orig_node->tt_lock);
  if (!batadv_tt_global_check_crc(orig_node, tt_vlan,
      tt_num_vlan))
   goto request_table;
 } else {



  if (!has_tt_init || ttvn != orig_ttvn ||
      !batadv_tt_global_check_crc(orig_node, tt_vlan,
      tt_num_vlan)) {
request_table:
   batadv_dbg(BATADV_DBG_TT, bat_priv,
       "TT inconsistency for %pM. Need to retrieve the correct information (ttvn: %u last_ttvn: %u num_changes: %u)\n",
       orig_node->orig, ttvn, orig_ttvn,
       tt_num_changes);
   batadv_send_tt_request(bat_priv, orig_node, ttvn,
            tt_vlan, tt_num_vlan,
            full_table);
   return;
  }
 }
}
