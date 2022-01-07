
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* sk; int state; } ;
typedef TYPE_1__ ax25_cb ;
struct TYPE_16__ {int sk_err; int (* sk_state_change ) (TYPE_2__*) ;int sk_shutdown; int sk_state; } ;


 int AX25_STATE_0 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_CLOSE ;
 int ax25_clear_queues (TYPE_1__*) ;
 int ax25_link_failed (TYPE_1__*,int) ;
 int ax25_stop_heartbeat (TYPE_1__*) ;
 int ax25_stop_idletimer (TYPE_1__*) ;
 int ax25_stop_t1timer (TYPE_1__*) ;
 int ax25_stop_t2timer (TYPE_1__*) ;
 int ax25_stop_t3timer (TYPE_1__*) ;
 int bh_lock_sock (TYPE_2__*) ;
 int bh_unlock_sock (TYPE_2__*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int sock_flag (TYPE_2__*,int ) ;
 int sock_set_flag (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;

void ax25_disconnect(ax25_cb *ax25, int reason)
{
 ax25_clear_queues(ax25);

 if (!ax25->sk || !sock_flag(ax25->sk, SOCK_DESTROY))
  ax25_stop_heartbeat(ax25);
 ax25_stop_t1timer(ax25);
 ax25_stop_t2timer(ax25);
 ax25_stop_t3timer(ax25);
 ax25_stop_idletimer(ax25);

 ax25->state = AX25_STATE_0;

 ax25_link_failed(ax25, reason);

 if (ax25->sk != ((void*)0)) {
  local_bh_disable();
  bh_lock_sock(ax25->sk);
  ax25->sk->sk_state = TCP_CLOSE;
  ax25->sk->sk_err = reason;
  ax25->sk->sk_shutdown |= SEND_SHUTDOWN;
  if (!sock_flag(ax25->sk, SOCK_DEAD)) {
   ax25->sk->sk_state_change(ax25->sk);
   sock_set_flag(ax25->sk, SOCK_DEAD);
  }
  bh_unlock_sock(ax25->sk);
  local_bh_enable();
 }
}
