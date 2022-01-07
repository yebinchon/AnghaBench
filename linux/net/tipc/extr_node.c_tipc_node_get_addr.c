
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int addr; } ;



u32 tipc_node_get_addr(struct tipc_node *node)
{
 return (node) ? node->addr : 0;
}
