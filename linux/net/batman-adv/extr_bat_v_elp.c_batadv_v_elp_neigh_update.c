
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {void* last_seen; } ;
struct TYPE_2__ {int elp_latest_seqno; int elp_interval; } ;
struct batadv_hardif_neigh_node {TYPE_1__ bat_v; void* last_seen; } ;
struct batadv_hard_iface {int dummy; } ;
struct batadv_elp_packet {int elp_interval; int seqno; int orig; } ;
typedef int s32 ;


 int BATADV_ELP_MAX_AGE ;
 struct batadv_hardif_neigh_node* batadv_hardif_neigh_get (struct batadv_hard_iface*,int *) ;
 int batadv_hardif_neigh_put (struct batadv_hardif_neigh_node*) ;
 struct batadv_neigh_node* batadv_neigh_node_get_or_create (struct batadv_orig_node*,struct batadv_hard_iface*,int *) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_orig_node* batadv_v_ogm_orig_get (struct batadv_priv*,int ) ;
 void* jiffies ;
 int ntohl (int ) ;

__attribute__((used)) static void batadv_v_elp_neigh_update(struct batadv_priv *bat_priv,
          u8 *neigh_addr,
          struct batadv_hard_iface *if_incoming,
          struct batadv_elp_packet *elp_packet)

{
 struct batadv_neigh_node *neigh;
 struct batadv_orig_node *orig_neigh;
 struct batadv_hardif_neigh_node *hardif_neigh;
 s32 seqno_diff;
 s32 elp_latest_seqno;

 orig_neigh = batadv_v_ogm_orig_get(bat_priv, elp_packet->orig);
 if (!orig_neigh)
  return;

 neigh = batadv_neigh_node_get_or_create(orig_neigh,
      if_incoming, neigh_addr);
 if (!neigh)
  goto orig_free;

 hardif_neigh = batadv_hardif_neigh_get(if_incoming, neigh_addr);
 if (!hardif_neigh)
  goto neigh_free;

 elp_latest_seqno = hardif_neigh->bat_v.elp_latest_seqno;
 seqno_diff = ntohl(elp_packet->seqno) - elp_latest_seqno;




 if (seqno_diff < 1 && seqno_diff > -BATADV_ELP_MAX_AGE)
  goto hardif_free;

 neigh->last_seen = jiffies;
 hardif_neigh->last_seen = jiffies;
 hardif_neigh->bat_v.elp_latest_seqno = ntohl(elp_packet->seqno);
 hardif_neigh->bat_v.elp_interval = ntohl(elp_packet->elp_interval);

hardif_free:
 if (hardif_neigh)
  batadv_hardif_neigh_put(hardif_neigh);
neigh_free:
 if (neigh)
  batadv_neigh_node_put(neigh);
orig_free:
 if (orig_neigh)
  batadv_orig_node_put(orig_neigh);
}
