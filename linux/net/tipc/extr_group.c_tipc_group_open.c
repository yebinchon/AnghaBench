
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_member {TYPE_1__* group; int small_win; } ;
struct TYPE_2__ {int* open; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void tipc_group_open(struct tipc_member *m, bool *wakeup)
{
 *wakeup = 0;
 if (list_empty(&m->small_win))
  return;
 list_del_init(&m->small_win);
 *m->group->open = 1;
 *wakeup = 1;
}
