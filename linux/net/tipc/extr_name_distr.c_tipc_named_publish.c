
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct publication {scalar_t__ scope; int binding_node; } ;
struct net {int dummy; } ;
struct name_table {int cluster_scope_lock; int cluster_scope; int node_scope; } ;
struct distr_item {int dummy; } ;


 int ITEM_SIZE ;
 int PUBLICATION ;
 scalar_t__ TIPC_NODE_SCOPE ;
 int buf_msg (struct sk_buff*) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ msg_data (int ) ;
 struct sk_buff* named_prepare_buf (struct net*,int ,int ,int ) ;
 int pr_warn (char*) ;
 int publ_to_item (struct distr_item*,struct publication*) ;
 struct name_table* tipc_name_table (struct net*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ)
{
 struct name_table *nt = tipc_name_table(net);
 struct distr_item *item;
 struct sk_buff *skb;

 if (publ->scope == TIPC_NODE_SCOPE) {
  list_add_tail_rcu(&publ->binding_node, &nt->node_scope);
  return ((void*)0);
 }
 write_lock_bh(&nt->cluster_scope_lock);
 list_add_tail(&publ->binding_node, &nt->cluster_scope);
 write_unlock_bh(&nt->cluster_scope_lock);
 skb = named_prepare_buf(net, PUBLICATION, ITEM_SIZE, 0);
 if (!skb) {
  pr_warn("Publication distribution failure\n");
  return ((void*)0);
 }

 item = (struct distr_item *)msg_data(buf_msg(skb));
 publ_to_item(item, publ);
 return skb;
}
