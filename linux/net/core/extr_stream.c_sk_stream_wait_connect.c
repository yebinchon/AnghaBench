
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sock {int sk_state; int sk_write_pending; int sk_err; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EPIPE ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int add_wait_queue (int ,int *) ;
 struct task_struct* current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (struct task_struct*) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;
 int woken_wake_function ;

int sk_stream_wait_connect(struct sock *sk, long *timeo_p)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct task_struct *tsk = current;
 int done;

 do {
  int err = sock_error(sk);
  if (err)
   return err;
  if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV))
   return -EPIPE;
  if (!*timeo_p)
   return -EAGAIN;
  if (signal_pending(tsk))
   return sock_intr_errno(*timeo_p);

  add_wait_queue(sk_sleep(sk), &wait);
  sk->sk_write_pending++;
  done = sk_wait_event(sk, timeo_p,
         !sk->sk_err &&
         !((1 << sk->sk_state) &
           ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)), &wait);
  remove_wait_queue(sk_sleep(sk), &wait);
  sk->sk_write_pending--;
 } while (!done);
 return 0;
}
