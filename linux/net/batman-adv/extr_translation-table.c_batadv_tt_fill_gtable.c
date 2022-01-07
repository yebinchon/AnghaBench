
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int last_ttvn; int tt_buff_lock; int * tt_buff; scalar_t__ tt_buff_len; } ;


 int _batadv_tt_update_changes (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_tt_change*,int ,int ) ;
 int atomic_set (int *,int ) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int *) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_tt_global_del_orig (struct batadv_priv*,struct batadv_orig_node*,int,char*) ;
 int kfree (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_tt_fill_gtable(struct batadv_priv *bat_priv,
      struct batadv_tvlv_tt_change *tt_change,
      u8 ttvn, u8 *resp_src,
      u16 num_entries)
{
 struct batadv_orig_node *orig_node;

 orig_node = batadv_orig_hash_find(bat_priv, resp_src);
 if (!orig_node)
  goto out;


 batadv_tt_global_del_orig(bat_priv, orig_node, -1,
      "Received full table");

 _batadv_tt_update_changes(bat_priv, orig_node, tt_change, num_entries,
      ttvn);

 spin_lock_bh(&orig_node->tt_buff_lock);
 kfree(orig_node->tt_buff);
 orig_node->tt_buff_len = 0;
 orig_node->tt_buff = ((void*)0);
 spin_unlock_bh(&orig_node->tt_buff_lock);

 atomic_set(&orig_node->last_ttvn, ttvn);

out:
 if (orig_node)
  batadv_orig_node_put(orig_node);
}
