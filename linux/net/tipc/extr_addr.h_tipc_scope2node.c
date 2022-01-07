
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int TIPC_NODE_SCOPE ;
 int tipc_own_addr (struct net*) ;

__attribute__((used)) static inline int tipc_scope2node(struct net *net, int sc)
{
 return sc != TIPC_NODE_SCOPE ? 0 : tipc_own_addr(net);
}
