
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tipc_net {int * node_id; int node_id_string; } ;
struct net {int dummy; } ;


 int strlen (int ) ;
 struct tipc_net* tipc_net (struct net*) ;

__attribute__((used)) static inline u8 *tipc_own_id(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);

 if (!strlen(tn->node_id_string))
  return ((void*)0);
 return tn->node_id;
}
