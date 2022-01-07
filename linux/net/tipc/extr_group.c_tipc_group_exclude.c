
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_group {int portid; int loopback; } ;



u32 tipc_group_exclude(struct tipc_group *grp)
{
 if (!grp->loopback)
  return grp->portid;
 return 0;
}
