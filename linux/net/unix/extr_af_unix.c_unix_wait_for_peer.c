
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int peer_wait; } ;
struct sock {int sk_shutdown; } ;


 int DEFINE_WAIT (int ) ;
 int RCV_SHUTDOWN ;
 int SOCK_DEAD ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 long schedule_timeout (long) ;
 int sock_flag (struct sock*,int ) ;
 scalar_t__ unix_recvq_full (struct sock*) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wait ;

__attribute__((used)) static long unix_wait_for_peer(struct sock *other, long timeo)
{
 struct unix_sock *u = unix_sk(other);
 int sched;
 DEFINE_WAIT(wait);

 prepare_to_wait_exclusive(&u->peer_wait, &wait, TASK_INTERRUPTIBLE);

 sched = !sock_flag(other, SOCK_DEAD) &&
  !(other->sk_shutdown & RCV_SHUTDOWN) &&
  unix_recvq_full(other);

 unix_state_unlock(other);

 if (sched)
  timeo = schedule_timeout(timeo);

 finish_wait(&u->peer_wait, &wait);
 return timeo;
}
