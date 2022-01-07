
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct o2net_sock_container {int sc_idle_timeout; TYPE_1__* sc_node; } ;
struct o2net_node {int nn_timeout; int nn_still_up; } ;
struct TYPE_2__ {int nd_num; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work (int *) ;
 struct o2net_node* o2net_nn_from_num (int ) ;
 int o2net_num_from_nn (struct o2net_node*) ;
 int o2net_sc_reset_idle_timer (struct o2net_sock_container*) ;
 int o2quo_conn_up (int ) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void o2net_sc_postpone_idle(struct o2net_sock_container *sc)
{
 struct o2net_node *nn = o2net_nn_from_num(sc->sc_node->nd_num);


 if (atomic_read(&nn->nn_timeout)) {
  o2quo_conn_up(o2net_num_from_nn(nn));
  cancel_delayed_work(&nn->nn_still_up);
  atomic_set(&nn->nn_timeout, 0);
 }


 if (timer_pending(&sc->sc_idle_timeout))
  o2net_sc_reset_idle_timer(sc);
}
