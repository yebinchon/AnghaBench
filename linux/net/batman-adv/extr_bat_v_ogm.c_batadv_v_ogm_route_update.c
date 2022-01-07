
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ethhdr {int h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_ogm2_packet {int dummy; } ;
struct batadv_neigh_node {struct batadv_orig_node* orig_node; } ;
struct TYPE_2__ {scalar_t__ last_seqno; scalar_t__ throughput; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_v; } ;
struct batadv_hard_iface {int dummy; } ;
typedef scalar_t__ s32 ;


 int BATADV_DBG_BATMAN ;
 scalar_t__ BATADV_OGM_MAX_ORIGDIFF ;
 int batadv_dbg (int ,struct batadv_priv*,char*) ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,struct batadv_hard_iface*) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_neigh_node* batadv_orig_router_get (struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int batadv_update_route (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*,struct batadv_neigh_node*) ;
 struct batadv_orig_node* batadv_v_ogm_orig_get (struct batadv_priv*,int ) ;

__attribute__((used)) static bool batadv_v_ogm_route_update(struct batadv_priv *bat_priv,
          const struct ethhdr *ethhdr,
          const struct batadv_ogm2_packet *ogm2,
          struct batadv_orig_node *orig_node,
          struct batadv_neigh_node *neigh_node,
          struct batadv_hard_iface *if_incoming,
          struct batadv_hard_iface *if_outgoing)
{
 struct batadv_neigh_node *router = ((void*)0);
 struct batadv_orig_node *orig_neigh_node;
 struct batadv_neigh_node *orig_neigh_router = ((void*)0);
 struct batadv_neigh_ifinfo *router_ifinfo = ((void*)0), *neigh_ifinfo = ((void*)0);
 u32 router_throughput, neigh_throughput;
 u32 router_last_seqno;
 u32 neigh_last_seqno;
 s32 neigh_seq_diff;
 bool forward = 0;

 orig_neigh_node = batadv_v_ogm_orig_get(bat_priv, ethhdr->h_source);
 if (!orig_neigh_node)
  goto out;

 orig_neigh_router = batadv_orig_router_get(orig_neigh_node,
         if_outgoing);




 router = batadv_orig_router_get(orig_node, if_outgoing);
 if (router && router->orig_node != orig_node && !orig_neigh_router) {
  batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
      "Drop packet: OGM via unknown neighbor!\n");
  goto out;
 }




 forward = 1;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Searching and updating originator entry of received packet\n");




 if (router == neigh_node)
  goto out;





 if (router) {
  router_ifinfo = batadv_neigh_ifinfo_get(router, if_outgoing);
  neigh_ifinfo = batadv_neigh_ifinfo_get(neigh_node, if_outgoing);


  if (!router_ifinfo || !neigh_ifinfo)
   goto out;

  neigh_last_seqno = neigh_ifinfo->bat_v.last_seqno;
  router_last_seqno = router_ifinfo->bat_v.last_seqno;
  neigh_seq_diff = neigh_last_seqno - router_last_seqno;
  router_throughput = router_ifinfo->bat_v.throughput;
  neigh_throughput = neigh_ifinfo->bat_v.throughput;

  if (neigh_seq_diff < BATADV_OGM_MAX_ORIGDIFF &&
      router_throughput >= neigh_throughput)
   goto out;
 }

 batadv_update_route(bat_priv, orig_node, if_outgoing, neigh_node);
out:
 if (router)
  batadv_neigh_node_put(router);
 if (orig_neigh_router)
  batadv_neigh_node_put(orig_neigh_router);
 if (orig_neigh_node)
  batadv_orig_node_put(orig_neigh_node);
 if (router_ifinfo)
  batadv_neigh_ifinfo_put(router_ifinfo);
 if (neigh_ifinfo)
  batadv_neigh_ifinfo_put(neigh_ifinfo);

 return forward;
}
