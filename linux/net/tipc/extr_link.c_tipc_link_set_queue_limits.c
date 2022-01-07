
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_link {int mtu; int window; TYPE_1__* backlog; } ;
struct TYPE_2__ {int limit; } ;


 int ITEM_SIZE ;
 size_t TIPC_CRITICAL_IMPORTANCE ;
 size_t TIPC_HIGH_IMPORTANCE ;
 size_t TIPC_LOW_IMPORTANCE ;
 int TIPC_MAX_PUBL ;
 size_t TIPC_MEDIUM_IMPORTANCE ;
 size_t TIPC_SYSTEM_IMPORTANCE ;
 void* max_t (int ,int,int) ;
 int u16 ;

void tipc_link_set_queue_limits(struct tipc_link *l, u32 win)
{
 int max_bulk = TIPC_MAX_PUBL / (l->mtu / ITEM_SIZE);

 l->window = win;
 l->backlog[TIPC_LOW_IMPORTANCE].limit = max_t(u16, 50, win);
 l->backlog[TIPC_MEDIUM_IMPORTANCE].limit = max_t(u16, 100, win * 2);
 l->backlog[TIPC_HIGH_IMPORTANCE].limit = max_t(u16, 150, win * 3);
 l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = max_t(u16, 200, win * 4);
 l->backlog[TIPC_SYSTEM_IMPORTANCE].limit = max_bulk;
}
