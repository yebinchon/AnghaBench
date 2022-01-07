
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_nlist {scalar_t__ self; int local; int remote; int list; } ;


 scalar_t__ tipc_dest_push (int *,scalar_t__,int ) ;

void tipc_nlist_add(struct tipc_nlist *nl, u32 node)
{
 if (node == nl->self)
  nl->local = 1;
 else if (tipc_dest_push(&nl->list, node, 0))
  nl->remote++;
}
