
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int state; } ;


 int X25_LINK_STATE_0 ;
 int x25_kill_by_neigh (struct x25_neigh*) ;

void x25_link_terminated(struct x25_neigh *nb)
{
 nb->state = X25_LINK_STATE_0;

 x25_kill_by_neigh(nb);
}
