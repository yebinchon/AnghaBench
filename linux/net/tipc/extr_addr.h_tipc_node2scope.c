
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int TIPC_CLUSTER_SCOPE ;
 int TIPC_NODE_SCOPE ;

__attribute__((used)) static inline int tipc_node2scope(u32 node)
{
 return node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
}
