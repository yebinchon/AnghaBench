
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_net {int nametbl_lock; } ;
struct sk_buff {int dummy; } ;
struct publication {int dummy; } ;
struct net {int dummy; } ;
struct name_table {scalar_t__ local_publ_count; } ;


 scalar_t__ TIPC_MAX_PUBL ;
 int pr_warn (char*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct name_table* tipc_name_table (struct net*) ;
 struct sk_buff* tipc_named_publish (struct net*,struct publication*) ;
 struct publication* tipc_nametbl_insert_publ (struct net*,int ,int ,int ,int ,int ,int ,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_node_broadcast (struct net*,struct sk_buff*) ;
 int tipc_own_addr (struct net*) ;

struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
      u32 upper, u32 scope, u32 port,
      u32 key)
{
 struct name_table *nt = tipc_name_table(net);
 struct tipc_net *tn = tipc_net(net);
 struct publication *p = ((void*)0);
 struct sk_buff *skb = ((void*)0);

 spin_lock_bh(&tn->nametbl_lock);

 if (nt->local_publ_count >= TIPC_MAX_PUBL) {
  pr_warn("Bind failed, max limit %u reached\n", TIPC_MAX_PUBL);
  goto exit;
 }

 p = tipc_nametbl_insert_publ(net, type, lower, upper, scope,
         tipc_own_addr(net), port, key);
 if (p) {
  nt->local_publ_count++;
  skb = tipc_named_publish(net, p);
 }
exit:
 spin_unlock_bh(&tn->nametbl_lock);

 if (skb)
  tipc_node_broadcast(net, skb);
 return p;
}
