
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nlist {int dummy; } ;
struct tipc_group {struct tipc_nlist dests; } ;



struct tipc_nlist *tipc_group_dests(struct tipc_group *grp)
{
 return &grp->dests;
}
