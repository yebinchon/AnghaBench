
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct list_head {int dummy; } ;
struct hsrv1_ethhdr_sp {int dummy; } ;
struct hsr_tag {int dummy; } ;
struct hsr_sup_tag {int dummy; } ;
struct hsr_sup_payload {int macaddress_A; } ;
struct hsr_port {int type; TYPE_1__* hsr; } ;
struct hsr_node {int mac_list; int addr_B_port; int * seq_out; scalar_t__* time_in_stale; int * time_in; int macaddress_B; } ;
struct ethhdr {scalar_t__ h_proto; int h_source; } ;
struct TYPE_2__ {struct list_head node_db; } ;


 int ETH_P_HSR ;
 int HSR_PT_PORTS ;
 scalar_t__ HSR_SEQNR_START ;
 int ether_addr_copy (int ,int ) ;
 struct hsr_node* find_node_by_addr_A (struct list_head*,int ) ;
 struct hsr_node* hsr_add_node (struct list_head*,int ,scalar_t__) ;
 scalar_t__ htons (int ) ;
 int kfree_rcu (struct hsr_node*,int ) ;
 int list_del_rcu (int *) ;
 int rcu_head ;
 scalar_t__ seq_nr_after (int ,int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 scalar_t__ time_after (int ,int ) ;

void hsr_handle_sup_frame(struct sk_buff *skb, struct hsr_node *node_curr,
     struct hsr_port *port_rcv)
{
 struct ethhdr *ethhdr;
 struct hsr_node *node_real;
 struct hsr_sup_payload *hsr_sp;
 struct list_head *node_db;
 int i;

 ethhdr = (struct ethhdr *)skb_mac_header(skb);


 skb_pull(skb, sizeof(struct ethhdr));


 if (ethhdr->h_proto == htons(ETH_P_HSR))
  skb_pull(skb, sizeof(struct hsr_tag));


 skb_pull(skb, sizeof(struct hsr_sup_tag));

 hsr_sp = (struct hsr_sup_payload *)skb->data;


 node_db = &port_rcv->hsr->node_db;
 node_real = find_node_by_addr_A(node_db, hsr_sp->macaddress_A);
 if (!node_real)

  node_real = hsr_add_node(node_db, hsr_sp->macaddress_A,
      HSR_SEQNR_START - 1);
 if (!node_real)
  goto done;
 if (node_real == node_curr)

  goto done;

 ether_addr_copy(node_real->macaddress_B, ethhdr->h_source);
 for (i = 0; i < HSR_PT_PORTS; i++) {
  if (!node_curr->time_in_stale[i] &&
      time_after(node_curr->time_in[i], node_real->time_in[i])) {
   node_real->time_in[i] = node_curr->time_in[i];
   node_real->time_in_stale[i] =
      node_curr->time_in_stale[i];
  }
  if (seq_nr_after(node_curr->seq_out[i], node_real->seq_out[i]))
   node_real->seq_out[i] = node_curr->seq_out[i];
 }
 node_real->addr_B_port = port_rcv->type;

 list_del_rcu(&node_curr->mac_list);
 kfree_rcu(node_curr, rcu_head);

done:
 skb_push(skb, sizeof(struct hsrv1_ethhdr_sp));
}
