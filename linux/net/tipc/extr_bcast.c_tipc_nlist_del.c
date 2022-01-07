
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_nlist {scalar_t__ self; int local; int remote; int list; } ;


 scalar_t__ tipc_dest_del (int *,scalar_t__,int ) ;

void tipc_nlist_del(struct tipc_nlist *nl, u32 node)
{
 if (node == nl->self)
  nl->local = 0;
 else if (tipc_dest_del(&nl->list, node, 0))
  nl->remote--;
}
