
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_orig_node {int dummy; } ;
struct TYPE_3__ {int (* is_eligible ) (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_node*) ;} ;
struct TYPE_4__ {TYPE_1__ gw; } ;


 struct batadv_orig_node* batadv_gw_get_selected_orig (struct batadv_priv*) ;
 int batadv_gw_reselect (struct batadv_priv*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int stub1 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_node*) ;

void batadv_gw_check_election(struct batadv_priv *bat_priv,
         struct batadv_orig_node *orig_node)
{
 struct batadv_orig_node *curr_gw_orig;




 if (!bat_priv->algo_ops->gw.is_eligible)
  return;

 curr_gw_orig = batadv_gw_get_selected_orig(bat_priv);
 if (!curr_gw_orig)
  goto reselect;


 if (curr_gw_orig == orig_node)
  goto out;

 if (!bat_priv->algo_ops->gw.is_eligible(bat_priv, curr_gw_orig,
      orig_node))
  goto out;

reselect:
 batadv_gw_reselect(bat_priv);
out:
 if (curr_gw_orig)
  batadv_orig_node_put(curr_gw_orig);
}
