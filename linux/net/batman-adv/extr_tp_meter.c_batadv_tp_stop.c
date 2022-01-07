
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_tp_vars {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int orig; } ;


 int BATADV_DBG_TP_METER ;
 int batadv_dbg (int ,struct batadv_priv*,char*,...) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int const*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_tp_vars* batadv_tp_list_find (struct batadv_priv*,int ) ;
 int batadv_tp_sender_shutdown (struct batadv_tp_vars*,int ) ;
 int batadv_tp_vars_put (struct batadv_tp_vars*) ;

void batadv_tp_stop(struct batadv_priv *bat_priv, const u8 *dst,
      u8 return_value)
{
 struct batadv_orig_node *orig_node;
 struct batadv_tp_vars *tp_vars;

 batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
     "Meter: stopping test towards %pM\n", dst);

 orig_node = batadv_orig_hash_find(bat_priv, dst);
 if (!orig_node)
  return;

 tp_vars = batadv_tp_list_find(bat_priv, orig_node->orig);
 if (!tp_vars) {
  batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
      "Meter: trying to interrupt an already over connection\n");
  goto out;
 }

 batadv_tp_sender_shutdown(tp_vars, return_value);
 batadv_tp_vars_put(tp_vars);
out:
 batadv_orig_node_put(orig_node);
}
