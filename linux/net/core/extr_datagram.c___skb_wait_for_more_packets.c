
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int ENOTCONN ;
 int RCV_SHUTDOWN ;
 struct sk_buff const* READ_ONCE (int ) ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ connection_based (struct sock*) ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 int receiver_wake_function ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

int __skb_wait_for_more_packets(struct sock *sk, int *err, long *timeo_p,
    const struct sk_buff *skb)
{
 int error;
 DEFINE_WAIT_FUNC(wait, receiver_wake_function);

 prepare_to_wait_exclusive(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);


 error = sock_error(sk);
 if (error)
  goto out_err;

 if (READ_ONCE(sk->sk_receive_queue.prev) != skb)
  goto out;


 if (sk->sk_shutdown & RCV_SHUTDOWN)
  goto out_noerr;




 error = -ENOTCONN;
 if (connection_based(sk) &&
     !(sk->sk_state == TCP_ESTABLISHED || sk->sk_state == TCP_LISTEN))
  goto out_err;


 if (signal_pending(current))
  goto interrupted;

 error = 0;
 *timeo_p = schedule_timeout(*timeo_p);
out:
 finish_wait(sk_sleep(sk), &wait);
 return error;
interrupted:
 error = sock_intr_errno(*timeo_p);
out_err:
 *err = error;
 goto out;
out_noerr:
 *err = 0;
 error = 1;
 goto out;
}
