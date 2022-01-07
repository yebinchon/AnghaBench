
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct timer_list {int dummy; } ;


 struct x25_neigh* from_timer (int ,struct timer_list*,int ) ;
 struct x25_neigh* nb ;
 int t20timer ;
 int x25_start_t20timer (struct x25_neigh*) ;
 int x25_transmit_restart_request (struct x25_neigh*) ;

__attribute__((used)) static void x25_t20timer_expiry(struct timer_list *t)
{
 struct x25_neigh *nb = from_timer(nb, t, t20timer);

 x25_transmit_restart_request(nb);

 x25_start_t20timer(nb);
}
