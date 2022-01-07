
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct name_table {int cluster_scope_lock; int cluster_scope; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int named_distribute (struct net*,struct sk_buff_head*,int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct name_table* tipc_name_table (struct net*) ;
 int tipc_node_xmit (struct net*,struct sk_buff_head*,int ,int ) ;

void tipc_named_node_up(struct net *net, u32 dnode)
{
 struct name_table *nt = tipc_name_table(net);
 struct sk_buff_head head;

 __skb_queue_head_init(&head);

 read_lock_bh(&nt->cluster_scope_lock);
 named_distribute(net, &head, dnode, &nt->cluster_scope);
 tipc_node_xmit(net, &head, dnode, 0);
 read_unlock_bh(&nt->cluster_scope_lock);
}
