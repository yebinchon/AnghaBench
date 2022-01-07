
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_pending; int sk_state; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int wait ;
 long wait_woken (int *,int ,long) ;
 int woken_wake_function ;

__attribute__((used)) static long inet_wait_for_connect(struct sock *sk, long timeo, int writebias)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 add_wait_queue(sk_sleep(sk), &wait);
 sk->sk_write_pending += writebias;






 while ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
  release_sock(sk);
  timeo = wait_woken(&wait, TASK_INTERRUPTIBLE, timeo);
  lock_sock(sk);
  if (signal_pending(current) || !timeo)
   break;
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 sk->sk_write_pending -= writebias;
 return timeo;
}
