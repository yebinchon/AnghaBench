
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int name; } ;
struct net {int dummy; } ;


 size_t MAX_BEARERS ;
 struct tipc_net* net_generic (struct net*,int ) ;
 struct tipc_bearer* rtnl_dereference (int ) ;
 int strcmp (int ,char const*) ;
 int tipc_net_id ;

struct tipc_bearer *tipc_bearer_find(struct net *net, const char *name)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct tipc_bearer *b;
 u32 i;

 for (i = 0; i < MAX_BEARERS; i++) {
  b = rtnl_dereference(tn->bearer_list[i]);
  if (b && (!strcmp(b->name, name)))
   return b;
 }
 return ((void*)0);
}
