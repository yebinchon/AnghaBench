
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;


 int DEFINE_WAIT (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ERESTARTSYS ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_SEQPACKET ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_LISTEN ;
 int current ;
 int finish_wait (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int signal_pending (int ) ;
 int sk_acceptq_removed (struct sock*) ;
 int sk_sleep (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_graft (struct sock*,struct socket*) ;
 int wait ;

__attribute__((used)) static int nr_accept(struct socket *sock, struct socket *newsock, int flags,
       bool kern)
{
 struct sk_buff *skb;
 struct sock *newsk;
 DEFINE_WAIT(wait);
 struct sock *sk;
 int err = 0;

 if ((sk = sock->sk) == ((void*)0))
  return -EINVAL;

 lock_sock(sk);
 if (sk->sk_type != SOCK_SEQPACKET) {
  err = -EOPNOTSUPP;
  goto out_release;
 }

 if (sk->sk_state != TCP_LISTEN) {
  err = -EINVAL;
  goto out_release;
 }





 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  skb = skb_dequeue(&sk->sk_receive_queue);
  if (skb)
   break;

  if (flags & O_NONBLOCK) {
   err = -EWOULDBLOCK;
   break;
  }
  if (!signal_pending(current)) {
   release_sock(sk);
   schedule();
   lock_sock(sk);
   continue;
  }
  err = -ERESTARTSYS;
  break;
 }
 finish_wait(sk_sleep(sk), &wait);
 if (err)
  goto out_release;

 newsk = skb->sk;
 sock_graft(newsk, newsock);


 kfree_skb(skb);
 sk_acceptq_removed(sk);

out_release:
 release_sock(sk);

 return err;
}
