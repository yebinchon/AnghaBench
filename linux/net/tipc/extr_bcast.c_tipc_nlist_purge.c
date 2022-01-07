
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nlist {int local; scalar_t__ remote; int list; } ;


 int tipc_dest_list_purge (int *) ;

void tipc_nlist_purge(struct tipc_nlist *nl)
{
 tipc_dest_list_purge(&nl->list);
 nl->remote = 0;
 nl->local = 0;
}
