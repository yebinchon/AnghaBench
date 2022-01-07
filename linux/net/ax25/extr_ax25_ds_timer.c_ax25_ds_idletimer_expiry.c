
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* sk; int state; scalar_t__ n2count; } ;
typedef TYPE_1__ ax25_cb ;
struct TYPE_13__ {int (* sk_state_change ) (TYPE_2__*) ;int sk_shutdown; scalar_t__ sk_err; int sk_state; } ;


 int AX25_STATE_2 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int ax25_calculate_t1 (TYPE_1__*) ;
 int ax25_clear_queues (TYPE_1__*) ;
 int ax25_start_t1timer (TYPE_1__*) ;
 int ax25_stop_t3timer (TYPE_1__*) ;
 int bh_lock_sock (TYPE_2__*) ;
 int bh_unlock_sock (TYPE_2__*) ;
 int sock_flag (TYPE_2__*,int ) ;
 int sock_set_flag (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;

void ax25_ds_idletimer_expiry(ax25_cb *ax25)
{
 ax25_clear_queues(ax25);

 ax25->n2count = 0;
 ax25->state = AX25_STATE_2;

 ax25_calculate_t1(ax25);
 ax25_start_t1timer(ax25);
 ax25_stop_t3timer(ax25);

 if (ax25->sk != ((void*)0)) {
  bh_lock_sock(ax25->sk);
  ax25->sk->sk_state = TCP_CLOSE;
  ax25->sk->sk_err = 0;
  ax25->sk->sk_shutdown |= SEND_SHUTDOWN;
  if (!sock_flag(ax25->sk, SOCK_DEAD)) {
   ax25->sk->sk_state_change(ax25->sk);
   sock_set_flag(ax25->sk, SOCK_DEAD);
  }
  bh_unlock_sock(ax25->sk);
 }
}
