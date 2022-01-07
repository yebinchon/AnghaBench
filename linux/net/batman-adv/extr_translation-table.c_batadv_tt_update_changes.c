
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int last_ttvn; } ;


 int _batadv_tt_update_changes (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_tt_change*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int batadv_tt_len (int ) ;
 int batadv_tt_save_orig_buffer (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_tt_change*,int ) ;

__attribute__((used)) static void batadv_tt_update_changes(struct batadv_priv *bat_priv,
         struct batadv_orig_node *orig_node,
         u16 tt_num_changes, u8 ttvn,
         struct batadv_tvlv_tt_change *tt_change)
{
 _batadv_tt_update_changes(bat_priv, orig_node, tt_change,
      tt_num_changes, ttvn);

 batadv_tt_save_orig_buffer(bat_priv, orig_node, tt_change,
       batadv_tt_len(tt_num_changes));
 atomic_set(&orig_node->last_ttvn, ttvn);
}
