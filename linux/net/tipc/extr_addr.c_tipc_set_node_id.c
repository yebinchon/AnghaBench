
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tipc_net {int trial_addr; int net_id; int node_id_string; int node_id; } ;
struct net {int dummy; } ;


 int NODE_ID_LEN ;
 int memcpy (int ,int *,int ) ;
 int pr_info (char*,int ,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_nodeid2string (int ,int *) ;
 int tipc_own_id_string (struct net*) ;

void tipc_set_node_id(struct net *net, u8 *id)
{
 struct tipc_net *tn = tipc_net(net);
 u32 *tmp = (u32 *)id;

 memcpy(tn->node_id, id, NODE_ID_LEN);
 tipc_nodeid2string(tn->node_id_string, id);
 tn->trial_addr = tmp[0] ^ tmp[1] ^ tmp[2] ^ tmp[3];
 pr_info("Own node identity %s, cluster identity %u\n",
  tipc_own_id_string(net), tn->net_id);
}
