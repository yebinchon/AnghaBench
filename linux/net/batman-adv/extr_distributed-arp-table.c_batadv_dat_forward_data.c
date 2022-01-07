
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_dat_candidate {scalar_t__ type; int orig_node; } ;
typedef int __be32 ;


 int BATADV_CNT_DAT_GET_TX ;
 int BATADV_CNT_DAT_PUT_TX ;
 int BATADV_DAT_CANDIDATES_NUM ;
 scalar_t__ BATADV_DAT_CANDIDATE_NOT_FOUND ;
 int BATADV_DBG_DAT ;
 int BATADV_IF_DEFAULT ;


 int GFP_ATOMIC ;
 int NET_XMIT_SUCCESS ;
 struct batadv_dat_candidate* batadv_dat_select_candidates (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_orig_node_put (int ) ;
 struct batadv_neigh_node* batadv_orig_router_get (int ,int ) ;
 int batadv_send_skb_prepare_unicast_4addr (struct batadv_priv*,struct sk_buff*,int ,int) ;
 int batadv_send_unicast_skb (struct sk_buff*,struct batadv_neigh_node*) ;
 int kfree (struct batadv_dat_candidate*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pskb_copy_for_clone (struct sk_buff*,int ) ;

__attribute__((used)) static bool batadv_dat_forward_data(struct batadv_priv *bat_priv,
        struct sk_buff *skb, __be32 ip,
        unsigned short vid, int packet_subtype)
{
 int i;
 bool ret = 0;
 int send_status;
 struct batadv_neigh_node *neigh_node = ((void*)0);
 struct sk_buff *tmp_skb;
 struct batadv_dat_candidate *cand;

 cand = batadv_dat_select_candidates(bat_priv, ip, vid);
 if (!cand)
  goto out;

 batadv_dbg(BATADV_DBG_DAT, bat_priv, "DHT_SEND for %pI4\n", &ip);

 for (i = 0; i < BATADV_DAT_CANDIDATES_NUM; i++) {
  if (cand[i].type == BATADV_DAT_CANDIDATE_NOT_FOUND)
   continue;

  neigh_node = batadv_orig_router_get(cand[i].orig_node,
          BATADV_IF_DEFAULT);
  if (!neigh_node)
   goto free_orig;

  tmp_skb = pskb_copy_for_clone(skb, GFP_ATOMIC);
  if (!batadv_send_skb_prepare_unicast_4addr(bat_priv, tmp_skb,
          cand[i].orig_node,
          packet_subtype)) {
   kfree_skb(tmp_skb);
   goto free_neigh;
  }

  send_status = batadv_send_unicast_skb(tmp_skb, neigh_node);
  if (send_status == NET_XMIT_SUCCESS) {

   switch (packet_subtype) {
   case 129:
    batadv_inc_counter(bat_priv,
         BATADV_CNT_DAT_GET_TX);
    break;
   case 128:
    batadv_inc_counter(bat_priv,
         BATADV_CNT_DAT_PUT_TX);
    break;
   }


   ret = 1;
  }
free_neigh:
  batadv_neigh_node_put(neigh_node);
free_orig:
  batadv_orig_node_put(cand[i].orig_node);
 }

out:
 kfree(cand);
 return ret;
}
