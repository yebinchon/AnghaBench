
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int sel_class; } ;
struct batadv_priv {TYPE_2__ gw; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_iv; } ;


 int BATADV_DBG_BATMAN ;
 int BATADV_IF_DEFAULT ;
 scalar_t__ atomic_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,scalar_t__,scalar_t__) ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,int ) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 struct batadv_neigh_node* batadv_orig_router_get (struct batadv_orig_node*,int ) ;

__attribute__((used)) static bool batadv_iv_gw_is_eligible(struct batadv_priv *bat_priv,
         struct batadv_orig_node *curr_gw_orig,
         struct batadv_orig_node *orig_node)
{
 struct batadv_neigh_ifinfo *router_orig_ifinfo = ((void*)0);
 struct batadv_neigh_ifinfo *router_gw_ifinfo = ((void*)0);
 struct batadv_neigh_node *router_gw = ((void*)0);
 struct batadv_neigh_node *router_orig = ((void*)0);
 u8 gw_tq_avg, orig_tq_avg;
 bool ret = 0;


 if (atomic_read(&bat_priv->gw.sel_class) <= 2)
  return 0;

 router_gw = batadv_orig_router_get(curr_gw_orig, BATADV_IF_DEFAULT);
 if (!router_gw) {
  ret = 1;
  goto out;
 }

 router_gw_ifinfo = batadv_neigh_ifinfo_get(router_gw,
         BATADV_IF_DEFAULT);
 if (!router_gw_ifinfo) {
  ret = 1;
  goto out;
 }

 router_orig = batadv_orig_router_get(orig_node, BATADV_IF_DEFAULT);
 if (!router_orig)
  goto out;

 router_orig_ifinfo = batadv_neigh_ifinfo_get(router_orig,
           BATADV_IF_DEFAULT);
 if (!router_orig_ifinfo)
  goto out;

 gw_tq_avg = router_gw_ifinfo->bat_iv.tq_avg;
 orig_tq_avg = router_orig_ifinfo->bat_iv.tq_avg;


 if (orig_tq_avg < gw_tq_avg)
  goto out;




 if ((atomic_read(&bat_priv->gw.sel_class) > 3) &&
     (orig_tq_avg - gw_tq_avg < atomic_read(&bat_priv->gw.sel_class)))
  goto out;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Restarting gateway selection: better gateway found (tq curr: %i, tq new: %i)\n",
     gw_tq_avg, orig_tq_avg);

 ret = 1;
out:
 if (router_gw_ifinfo)
  batadv_neigh_ifinfo_put(router_gw_ifinfo);
 if (router_orig_ifinfo)
  batadv_neigh_ifinfo_put(router_orig_ifinfo);
 if (router_gw)
  batadv_neigh_node_put(router_gw);
 if (router_orig)
  batadv_neigh_node_put(router_orig);

 return ret;
}
