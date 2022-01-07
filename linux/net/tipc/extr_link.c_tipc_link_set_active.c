
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int active; } ;



void tipc_link_set_active(struct tipc_link *l, bool active)
{
 l->active = active;
}
