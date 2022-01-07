
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_member {scalar_t__ state; } ;
struct tipc_group {int active_cnt; } ;


 scalar_t__ MBR_ACTIVE ;
 scalar_t__ MBR_RECLAIMING ;
 scalar_t__ MBR_REMITTED ;

__attribute__((used)) static void tipc_group_decr_active(struct tipc_group *grp,
       struct tipc_member *m)
{
 if (m->state == MBR_ACTIVE || m->state == MBR_RECLAIMING ||
     m->state == MBR_REMITTED)
  grp->active_cnt--;
}
