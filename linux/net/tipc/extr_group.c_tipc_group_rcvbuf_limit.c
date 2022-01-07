
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_group {int member_cnt; int max_active; } ;


 int ADV_ACTIVE ;
 int ADV_IDLE ;
 int FLOWCTL_BLK_SZ ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static int tipc_group_rcvbuf_limit(struct tipc_group *grp)
{
 int max_active, active_pool, idle_pool;
 int mcnt = grp->member_cnt + 1;


 max_active = min(mcnt / 8, 64);
 max_active = max(max_active, 16);
 grp->max_active = max_active;


 active_pool = max_active * ADV_ACTIVE;
 idle_pool = (mcnt - max_active) * ADV_IDLE;


 return (active_pool + idle_pool) * FLOWCTL_BLK_SZ * 4;
}
