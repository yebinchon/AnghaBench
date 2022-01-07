
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_node {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int random; } ;


 TYPE_1__* tipc_net (struct net*) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_put (struct tipc_node*) ;

__attribute__((used)) static u32 tipc_node_suggest_addr(struct net *net, u32 addr)
{
 struct tipc_node *n;

 addr ^= tipc_net(net)->random;
 while ((n = tipc_node_find(net, addr))) {
  tipc_node_put(n);
  addr++;
 }
 return addr;
}
