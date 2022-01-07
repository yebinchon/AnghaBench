
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_net {int ** bearer_list; } ;
struct tipc_bearer {int dummy; } ;
struct net {int dummy; } ;


 size_t MAX_BEARERS ;
 int bearer_disable (struct net*,struct tipc_bearer*) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 struct tipc_bearer* rtnl_dereference (int *) ;
 int tipc_net_id ;

void tipc_bearer_stop(struct net *net)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct tipc_bearer *b;
 u32 i;

 for (i = 0; i < MAX_BEARERS; i++) {
  b = rtnl_dereference(tn->bearer_list[i]);
  if (b) {
   bearer_disable(net, b);
   tn->bearer_list[i] = ((void*)0);
  }
 }
}
