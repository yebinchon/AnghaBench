
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {scalar_t__* active_links; } ;


 scalar_t__ INVALID_BEARER_ID ;

__attribute__((used)) static bool node_is_up(struct tipc_node *n)
{
 return n->active_links[0] != INVALID_BEARER_ID;
}
