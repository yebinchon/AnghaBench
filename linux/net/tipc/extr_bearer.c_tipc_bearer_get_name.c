
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int name; } ;
struct net {int dummy; } ;


 int EINVAL ;
 size_t MAX_BEARERS ;
 struct tipc_bearer* rtnl_dereference (int ) ;
 int strcpy (char*,int ) ;
 struct tipc_net* tipc_net (struct net*) ;

int tipc_bearer_get_name(struct net *net, char *name, u32 bearer_id)
{
 struct tipc_net *tn = tipc_net(net);
 struct tipc_bearer *b;

 if (bearer_id >= MAX_BEARERS)
  return -EINVAL;

 b = rtnl_dereference(tn->bearer_list[bearer_id]);
 if (!b)
  return -EINVAL;

 strcpy(name, b->name);
 return 0;
}
