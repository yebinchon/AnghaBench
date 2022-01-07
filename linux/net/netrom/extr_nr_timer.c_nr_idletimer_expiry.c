
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; scalar_t__ sk_err; int sk_state; } ;
struct nr_sock {int state; scalar_t__ n2count; struct sock sock; } ;


 int NR_DISCREQ ;
 int NR_STATE_2 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct nr_sock* from_timer (int ,struct timer_list*,int ) ;
 int idletimer ;
 struct nr_sock* nr ;
 int nr_clear_queues (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_stop_t2timer (struct sock*) ;
 int nr_stop_t4timer (struct sock*) ;
 int nr_write_internal (struct sock*,int ) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void nr_idletimer_expiry(struct timer_list *t)
{
 struct nr_sock *nr = from_timer(nr, t, idletimer);
 struct sock *sk = &nr->sock;

 bh_lock_sock(sk);

 nr_clear_queues(sk);

 nr->n2count = 0;
 nr_write_internal(sk, NR_DISCREQ);
 nr->state = NR_STATE_2;

 nr_start_t1timer(sk);
 nr_stop_t2timer(sk);
 nr_stop_t4timer(sk);

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = 0;
 sk->sk_shutdown |= SEND_SHUTDOWN;

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
 }
 bh_unlock_sock(sk);
}
