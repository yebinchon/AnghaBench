
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float u8 ;
typedef scalar_t__ u16 ;
struct batadv_tvlv_tt_data {float ttvn; int flags; } ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct TYPE_4__ {int last_changeset_len; int commit_lock; int last_changeset_lock; int local_hash; int vn; int last_changeset; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {float* orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
typedef int s32 ;
struct TYPE_3__ {int dev_addr; } ;


 int BATADV_CNT_TT_RESPONSE_TX ;
 int BATADV_DBG_TT ;
 int BATADV_TT_FULL_TABLE ;
 int BATADV_TT_RESPONSE ;
 int BATADV_TVLV_TT ;
 scalar_t__ atomic_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,float*,float,float) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,float*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_tt_local_valid ;
 scalar_t__ batadv_tt_prepare_tvlv_local_data (struct batadv_priv*,struct batadv_tvlv_tt_data**,struct batadv_tvlv_tt_change**,int*) ;
 int batadv_tt_tvlv_generate (struct batadv_priv*,int ,struct batadv_tvlv_tt_change*,int,int ,int *) ;
 int batadv_tvlv_unicast_send (struct batadv_priv*,int ,float*,int ,int,struct batadv_tvlv_tt_data*,scalar_t__) ;
 int kfree (struct batadv_tvlv_tt_data*) ;
 int memcpy (struct batadv_tvlv_tt_change*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool batadv_send_my_tt_response(struct batadv_priv *bat_priv,
           struct batadv_tvlv_tt_data *tt_data,
           u8 *req_src)
{
 struct batadv_tvlv_tt_data *tvlv_tt_data = ((void*)0);
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_tvlv_tt_change *tt_change;
 struct batadv_orig_node *orig_node;
 u8 my_ttvn, req_ttvn;
 u16 tvlv_len;
 bool full_table;
 s32 tt_len;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Received TT_REQUEST from %pM for ttvn: %u (me) [%c]\n",
     req_src, tt_data->ttvn,
     ((tt_data->flags & BATADV_TT_FULL_TABLE) ? 'F' : '.'));

 spin_lock_bh(&bat_priv->tt.commit_lock);

 my_ttvn = (u8)atomic_read(&bat_priv->tt.vn);
 req_ttvn = tt_data->ttvn;

 orig_node = batadv_orig_hash_find(bat_priv, req_src);
 if (!orig_node)
  goto out;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto out;




 if (tt_data->flags & BATADV_TT_FULL_TABLE || my_ttvn != req_ttvn ||
     !bat_priv->tt.last_changeset)
  full_table = 1;
 else
  full_table = 0;




 if (!full_table) {
  spin_lock_bh(&bat_priv->tt.last_changeset_lock);

  tt_len = bat_priv->tt.last_changeset_len;
  tvlv_len = batadv_tt_prepare_tvlv_local_data(bat_priv,
            &tvlv_tt_data,
            &tt_change,
            &tt_len);
  if (!tt_len || !tvlv_len)
   goto unlock;


  memcpy(tt_change, bat_priv->tt.last_changeset,
         bat_priv->tt.last_changeset_len);
  spin_unlock_bh(&bat_priv->tt.last_changeset_lock);
 } else {
  req_ttvn = (u8)atomic_read(&bat_priv->tt.vn);




  tt_len = -1;
  tvlv_len = batadv_tt_prepare_tvlv_local_data(bat_priv,
            &tvlv_tt_data,
            &tt_change,
            &tt_len);
  if (!tt_len || !tvlv_len)
   goto out;


  batadv_tt_tvlv_generate(bat_priv, bat_priv->tt.local_hash,
     tt_change, tt_len,
     batadv_tt_local_valid, ((void*)0));
 }

 tvlv_tt_data->flags = BATADV_TT_RESPONSE;
 tvlv_tt_data->ttvn = req_ttvn;

 if (full_table)
  tvlv_tt_data->flags |= BATADV_TT_FULL_TABLE;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Sending TT_RESPONSE to %pM [%c] (ttvn: %u)\n",
     orig_node->orig, full_table ? 'F' : '.', req_ttvn);

 batadv_inc_counter(bat_priv, BATADV_CNT_TT_RESPONSE_TX);

 batadv_tvlv_unicast_send(bat_priv, primary_if->net_dev->dev_addr,
     req_src, BATADV_TVLV_TT, 1, tvlv_tt_data,
     tvlv_len);

 goto out;

unlock:
 spin_unlock_bh(&bat_priv->tt.last_changeset_lock);
out:
 spin_unlock_bh(&bat_priv->tt.commit_lock);
 if (orig_node)
  batadv_orig_node_put(orig_node);
 if (primary_if)
  batadv_hardif_put(primary_if);
 kfree(tvlv_tt_data);

 return 1;
}
