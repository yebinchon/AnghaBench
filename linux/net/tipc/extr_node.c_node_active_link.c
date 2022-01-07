
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_node {int* active_links; TYPE_1__* links; } ;
struct tipc_link {int dummy; } ;
struct TYPE_2__ {struct tipc_link* link; } ;


 int INVALID_BEARER_ID ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct tipc_link *node_active_link(struct tipc_node *n, int sel)
{
 int bearer_id = n->active_links[sel & 1];

 if (unlikely(bearer_id == INVALID_BEARER_ID))
  return ((void*)0);

 return n->links[bearer_id].link;
}
