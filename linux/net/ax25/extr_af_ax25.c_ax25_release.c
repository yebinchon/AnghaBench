
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; void* sk_state; } ;
struct TYPE_14__ {int state; TYPE_1__* ax25_dev; int n2count; int sk; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_13__ {int * values; } ;


 int AX25_COMMAND ;
 int AX25_DISC ;
 int AX25_POLLON ;
 size_t AX25_VALUES_PROTOCOL ;
 int SEND_SHUTDOWN ;
 int SOCK_DESTROY ;
 scalar_t__ SOCK_SEQPACKET ;
 void* TCP_CLOSE ;
 int ax25_calculate_t1 (TYPE_2__*) ;
 int ax25_clear_queues (TYPE_2__*) ;
 int ax25_destroy_socket (TYPE_2__*) ;
 int ax25_disconnect (TYPE_2__*,int ) ;
 int ax25_send_control (TYPE_2__*,int ,int ,int ) ;
 int ax25_start_t1timer (TYPE_2__*) ;
 int ax25_stop_idletimer (TYPE_2__*) ;
 int ax25_stop_t2timer (TYPE_2__*) ;
 int ax25_stop_t3timer (TYPE_2__*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_2__* sk_to_ax25 (struct sock*) ;
 int sock_flag (int ,int ) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static int ax25_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 ax25_cb *ax25;

 if (sk == ((void*)0))
  return 0;

 sock_hold(sk);
 sock_orphan(sk);
 lock_sock(sk);
 ax25 = sk_to_ax25(sk);

 if (sk->sk_type == SOCK_SEQPACKET) {
  switch (ax25->state) {
  case 132:
   release_sock(sk);
   ax25_disconnect(ax25, 0);
   lock_sock(sk);
   ax25_destroy_socket(ax25);
   break;

  case 131:
  case 130:
   ax25_send_control(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
   release_sock(sk);
   ax25_disconnect(ax25, 0);
   lock_sock(sk);
   if (!sock_flag(ax25->sk, SOCK_DESTROY))
    ax25_destroy_socket(ax25);
   break;

  case 129:
  case 128:
   ax25_clear_queues(ax25);
   ax25->n2count = 0;

   switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
   case 133:
   case 134:
    ax25_send_control(ax25,
        AX25_DISC,
        AX25_POLLON,
        AX25_COMMAND);
    ax25_stop_t2timer(ax25);
    ax25_stop_t3timer(ax25);
    ax25_stop_idletimer(ax25);
    break;






   }
   ax25_calculate_t1(ax25);
   ax25_start_t1timer(ax25);
   ax25->state = 130;
   sk->sk_state = TCP_CLOSE;
   sk->sk_shutdown |= SEND_SHUTDOWN;
   sk->sk_state_change(sk);
   sock_set_flag(sk, SOCK_DESTROY);
   break;

  default:
   break;
  }
 } else {
  sk->sk_state = TCP_CLOSE;
  sk->sk_shutdown |= SEND_SHUTDOWN;
  sk->sk_state_change(sk);
  ax25_destroy_socket(ax25);
 }

 sock->sk = ((void*)0);
 release_sock(sk);
 sock_put(sk);

 return 0;
}
