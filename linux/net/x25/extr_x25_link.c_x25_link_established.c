
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int state; } ;




 void* X25_LINK_STATE_2 ;
 int x25_start_t20timer (struct x25_neigh*) ;
 int x25_transmit_restart_request (struct x25_neigh*) ;

void x25_link_established(struct x25_neigh *nb)
{
 switch (nb->state) {
 case 129:
  nb->state = X25_LINK_STATE_2;
  break;
 case 128:
  x25_transmit_restart_request(nb);
  nb->state = X25_LINK_STATE_2;
  x25_start_t20timer(nb);
  break;
 }
}
