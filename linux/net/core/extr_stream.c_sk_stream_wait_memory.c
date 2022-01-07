
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; TYPE_1__* sk_socket; int sk_write_pending; scalar_t__ sk_err; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EPIPE ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int SEND_SHUTDOWN ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int prandom_u32 () ;
 int remove_wait_queue (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_stream_memory_free (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int sock_intr_errno (long) ;
 int wait ;
 int woken_wake_function ;

int sk_stream_wait_memory(struct sock *sk, long *timeo_p)
{
 int err = 0;
 long vm_wait = 0;
 long current_timeo = *timeo_p;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 if (sk_stream_memory_free(sk))
  current_timeo = vm_wait = (prandom_u32() % (HZ / 5)) + 2;

 add_wait_queue(sk_sleep(sk), &wait);

 while (1) {
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

  if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
   goto do_error;
  if (!*timeo_p)
   goto do_eagain;
  if (signal_pending(current))
   goto do_interrupted;
  sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  if (sk_stream_memory_free(sk) && !vm_wait)
   break;

  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  sk->sk_write_pending++;
  sk_wait_event(sk, &current_timeo, sk->sk_err ||
        (sk->sk_shutdown & SEND_SHUTDOWN) ||
        (sk_stream_memory_free(sk) &&
        !vm_wait), &wait);
  sk->sk_write_pending--;

  if (vm_wait) {
   vm_wait -= current_timeo;
   current_timeo = *timeo_p;
   if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
       (current_timeo -= vm_wait) < 0)
    current_timeo = 0;
   vm_wait = 0;
  }
  *timeo_p = current_timeo;
 }
out:
 remove_wait_queue(sk_sleep(sk), &wait);
 return err;

do_error:
 err = -EPIPE;
 goto out;
do_eagain:





 set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
 err = -EAGAIN;
 goto out;
do_interrupted:
 err = sock_intr_errno(*timeo_p);
 goto out;
}
