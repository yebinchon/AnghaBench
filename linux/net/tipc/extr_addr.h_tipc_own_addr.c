
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net {int dummy; } ;
struct TYPE_2__ {int node_addr; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline u32 tipc_own_addr(struct net *net)
{
 return tipc_net(net)->node_addr;
}
