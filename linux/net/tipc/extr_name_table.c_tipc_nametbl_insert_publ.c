
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_service {int lock; } ;
struct publication {int dummy; } ;
struct net {int dummy; } ;
struct name_table {int * services; } ;


 int TIPC_NODE_SCOPE ;
 size_t hash (int ) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct name_table* tipc_name_table (struct net*) ;
 struct tipc_service* tipc_service_create (int ,int *) ;
 struct tipc_service* tipc_service_find (struct net*,int ) ;
 struct publication* tipc_service_insert_publ (struct net*,struct tipc_service*,int ,int ,int ,int ,int ,int ,int ) ;

struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
          u32 lower, u32 upper,
          u32 scope, u32 node,
          u32 port, u32 key)
{
 struct name_table *nt = tipc_name_table(net);
 struct tipc_service *sc;
 struct publication *p;

 if (scope > TIPC_NODE_SCOPE || lower > upper) {
  pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
    type, lower, upper, scope);
  return ((void*)0);
 }
 sc = tipc_service_find(net, type);
 if (!sc)
  sc = tipc_service_create(type, &nt->services[hash(type)]);
 if (!sc)
  return ((void*)0);

 spin_lock_bh(&sc->lock);
 p = tipc_service_insert_publ(net, sc, type, lower, upper,
         scope, node, port, key);
 spin_unlock_bh(&sc->lock);
 return p;
}
