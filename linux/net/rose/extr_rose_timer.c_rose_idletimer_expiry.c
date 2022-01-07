
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; scalar_t__ sk_err; int sk_state; } ;
struct rose_sock {struct sock sock; } ;
struct TYPE_2__ {int state; } ;


 int ROSE_CLEAR_REQUEST ;
 int ROSE_STATE_2 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct rose_sock* from_timer (int ,struct timer_list*,int ) ;
 int idletimer ;
 struct rose_sock* rose ;
 int rose_clear_queues (struct sock*) ;
 TYPE_1__* rose_sk (struct sock*) ;
 int rose_start_t3timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void rose_idletimer_expiry(struct timer_list *t)
{
 struct rose_sock *rose = from_timer(rose, t, idletimer);
 struct sock *sk = &rose->sock;

 bh_lock_sock(sk);
 rose_clear_queues(sk);

 rose_write_internal(sk, ROSE_CLEAR_REQUEST);
 rose_sk(sk)->state = ROSE_STATE_2;

 rose_start_t3timer(sk);

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = 0;
 sk->sk_shutdown |= SEND_SHUTDOWN;

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
 }
 bh_unlock_sock(sk);
}
