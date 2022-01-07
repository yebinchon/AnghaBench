
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct publication {scalar_t__ scope; int binding_node; } ;
struct net {int dummy; } ;
struct name_table {int cluster_scope_lock; } ;
struct distr_item {int dummy; } ;


 int ITEM_SIZE ;
 scalar_t__ TIPC_NODE_SCOPE ;
 int WITHDRAWAL ;
 int buf_msg (struct sk_buff*) ;
 int list_del (int *) ;
 scalar_t__ msg_data (int ) ;
 struct sk_buff* named_prepare_buf (struct net*,int ,int ,int ) ;
 int pr_warn (char*) ;
 int publ_to_item (struct distr_item*,struct publication*) ;
 struct name_table* tipc_name_table (struct net*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
{
 struct name_table *nt = tipc_name_table(net);
 struct sk_buff *buf;
 struct distr_item *item;

 write_lock_bh(&nt->cluster_scope_lock);
 list_del(&publ->binding_node);
 write_unlock_bh(&nt->cluster_scope_lock);
 if (publ->scope == TIPC_NODE_SCOPE)
  return ((void*)0);

 buf = named_prepare_buf(net, WITHDRAWAL, ITEM_SIZE, 0);
 if (!buf) {
  pr_warn("Withdrawal distribution failure\n");
  return ((void*)0);
 }

 item = (struct distr_item *)msg_data(buf_msg(buf));
 publ_to_item(item, publ);
 return buf;
}
