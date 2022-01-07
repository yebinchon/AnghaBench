
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct list_head {int dummy; } ;
struct hsr_node {unsigned long* time_in; int mac_list; int * seq_out; int macaddress_A; } ;


 int GFP_ATOMIC ;
 int HSR_PT_PORTS ;
 int ether_addr_copy (int ,unsigned char*) ;
 unsigned long jiffies ;
 struct hsr_node* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,struct list_head*) ;

struct hsr_node *hsr_add_node(struct list_head *node_db, unsigned char addr[],
         u16 seq_out)
{
 struct hsr_node *node;
 unsigned long now;
 int i;

 node = kzalloc(sizeof(*node), GFP_ATOMIC);
 if (!node)
  return ((void*)0);

 ether_addr_copy(node->macaddress_A, addr);




 now = jiffies;
 for (i = 0; i < HSR_PT_PORTS; i++)
  node->time_in[i] = now;
 for (i = 0; i < HSR_PT_PORTS; i++)
  node->seq_out[i] = seq_out;

 list_add_tail_rcu(&node->mac_list, node_db);

 return node;
}
