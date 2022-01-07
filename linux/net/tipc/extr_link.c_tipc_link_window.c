
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int window; } ;



int tipc_link_window(struct tipc_link *l)
{
 return l->window;
}
