
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct TYPE_3__ {int mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_2__ bat_iv; } ;
struct batadv_gw_node {struct batadv_orig_node* orig_node; } ;





 scalar_t__ BATADV_GW_THRESHOLD ;
 int BATADV_IF_DEFAULT ;
 scalar_t__ BATADV_TQ_MAX_VALUE ;
 int atomic_read (int *) ;
 struct batadv_neigh_node* batadv_find_router (struct batadv_priv*,struct batadv_orig_node*,int *) ;
 unsigned short batadv_get_vid (struct sk_buff*,int ) ;
 struct batadv_gw_node* batadv_gw_get_selected_gw_node (struct batadv_priv*) ;
 struct batadv_gw_node* batadv_gw_node_get (struct batadv_priv*,struct batadv_orig_node*) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,int ) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_orig_node* batadv_transtable_search (struct batadv_priv*,int ,int ,unsigned short) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

bool batadv_gw_out_of_range(struct batadv_priv *bat_priv,
       struct sk_buff *skb)
{
 struct batadv_neigh_node *neigh_curr = ((void*)0);
 struct batadv_neigh_node *neigh_old = ((void*)0);
 struct batadv_orig_node *orig_dst_node = ((void*)0);
 struct batadv_gw_node *gw_node = ((void*)0);
 struct batadv_gw_node *curr_gw = ((void*)0);
 struct batadv_neigh_ifinfo *curr_ifinfo, *old_ifinfo;
 struct ethhdr *ethhdr = (struct ethhdr *)skb->data;
 bool out_of_range = 0;
 u8 curr_tq_avg;
 unsigned short vid;

 vid = batadv_get_vid(skb, 0);

 if (is_multicast_ether_addr(ethhdr->h_dest))
  goto out;

 orig_dst_node = batadv_transtable_search(bat_priv, ethhdr->h_source,
       ethhdr->h_dest, vid);
 if (!orig_dst_node)
  goto out;

 gw_node = batadv_gw_node_get(bat_priv, orig_dst_node);
 if (!gw_node)
  goto out;

 switch (atomic_read(&bat_priv->gw.mode)) {
 case 128:



  curr_tq_avg = BATADV_TQ_MAX_VALUE;
  break;
 case 130:
  curr_gw = batadv_gw_get_selected_gw_node(bat_priv);
  if (!curr_gw)
   goto out;


  if (curr_gw->orig_node == orig_dst_node)
   goto out;





  neigh_curr = batadv_find_router(bat_priv, curr_gw->orig_node,
      ((void*)0));
  if (!neigh_curr)
   goto out;

  curr_ifinfo = batadv_neigh_ifinfo_get(neigh_curr,
            BATADV_IF_DEFAULT);
  if (!curr_ifinfo)
   goto out;

  curr_tq_avg = curr_ifinfo->bat_iv.tq_avg;
  batadv_neigh_ifinfo_put(curr_ifinfo);

  break;
 case 129:
 default:
  goto out;
 }

 neigh_old = batadv_find_router(bat_priv, orig_dst_node, ((void*)0));
 if (!neigh_old)
  goto out;

 old_ifinfo = batadv_neigh_ifinfo_get(neigh_old, BATADV_IF_DEFAULT);
 if (!old_ifinfo)
  goto out;

 if ((curr_tq_avg - old_ifinfo->bat_iv.tq_avg) > BATADV_GW_THRESHOLD)
  out_of_range = 1;
 batadv_neigh_ifinfo_put(old_ifinfo);

out:
 if (orig_dst_node)
  batadv_orig_node_put(orig_dst_node);
 if (curr_gw)
  batadv_gw_node_put(curr_gw);
 if (gw_node)
  batadv_gw_node_put(gw_node);
 if (neigh_old)
  batadv_neigh_node_put(neigh_old);
 if (neigh_curr)
  batadv_neigh_node_put(neigh_curr);
 return out_of_range;
}
