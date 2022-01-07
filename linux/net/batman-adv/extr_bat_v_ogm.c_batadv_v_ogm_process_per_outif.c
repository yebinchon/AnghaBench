
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_ogm2_packet {int tvlv_len; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 struct batadv_hard_iface* BATADV_IF_DEFAULT ;
 int batadv_tvlv_containers_process (struct batadv_priv*,int,struct batadv_orig_node*,int *,int *,unsigned char*,int ) ;
 int batadv_v_ogm_forward (struct batadv_priv*,struct batadv_ogm2_packet const*,struct batadv_orig_node*,struct batadv_neigh_node*,struct batadv_hard_iface*,struct batadv_hard_iface*) ;
 int batadv_v_ogm_metric_update (struct batadv_priv*,struct batadv_ogm2_packet const*,struct batadv_orig_node*,struct batadv_neigh_node*,struct batadv_hard_iface*,struct batadv_hard_iface*) ;
 int batadv_v_ogm_route_update (struct batadv_priv*,struct ethhdr const*,struct batadv_ogm2_packet const*,struct batadv_orig_node*,struct batadv_neigh_node*,struct batadv_hard_iface*,struct batadv_hard_iface*) ;
 int ntohs (int ) ;

__attribute__((used)) static void
batadv_v_ogm_process_per_outif(struct batadv_priv *bat_priv,
          const struct ethhdr *ethhdr,
          const struct batadv_ogm2_packet *ogm2,
          struct batadv_orig_node *orig_node,
          struct batadv_neigh_node *neigh_node,
          struct batadv_hard_iface *if_incoming,
          struct batadv_hard_iface *if_outgoing)
{
 int seqno_age;
 bool forward;


 seqno_age = batadv_v_ogm_metric_update(bat_priv, ogm2, orig_node,
            neigh_node, if_incoming,
            if_outgoing);


 if (seqno_age < 0)
  return;


 if (seqno_age > 0 && if_outgoing == BATADV_IF_DEFAULT)
  batadv_tvlv_containers_process(bat_priv, 1, orig_node,
            ((void*)0), ((void*)0),
            (unsigned char *)(ogm2 + 1),
            ntohs(ogm2->tvlv_len));


 forward = batadv_v_ogm_route_update(bat_priv, ethhdr, ogm2, orig_node,
         neigh_node, if_incoming,
         if_outgoing);


 if (forward)
  batadv_v_ogm_forward(bat_priv, ogm2, orig_node, neigh_node,
         if_incoming, if_outgoing);
}
