
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct neighbour {int dummy; } ;


 int __neigh_update (struct neighbour*,int const*,int ,int ,int ,int *) ;

int neigh_update(struct neighbour *neigh, const u8 *lladdr, u8 new,
   u32 flags, u32 nlmsg_pid)
{
 return __neigh_update(neigh, lladdr, new, flags, nlmsg_pid, ((void*)0));
}
