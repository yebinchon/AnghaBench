
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net {int dummy; } ;


 scalar_t__ tipc_own_addr (struct net*) ;

__attribute__((used)) static inline int in_own_node(struct net *net, u32 addr)
{
 return addr == tipc_own_addr(net) || !addr;
}
