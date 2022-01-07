
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int wait; int state; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int NETLINK_S_CONGESTED ;
 int SOCK_DEAD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ netlink_is_kernel (struct sock*) ;
 int netlink_overrun (struct sock*) ;
 int netlink_skb_set_owner_r (struct sk_buff*,struct sock*) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int remove_wait_queue (int *,int *) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sock_flag (struct sock*,int ) ;
 int sock_intr_errno (long) ;
 int sock_put (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

int netlink_attachskb(struct sock *sk, struct sk_buff *skb,
        long *timeo, struct sock *ssk)
{
 struct netlink_sock *nlk;

 nlk = nlk_sk(sk);

 if ((atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
      test_bit(NETLINK_S_CONGESTED, &nlk->state))) {
  DECLARE_WAITQUEUE(wait, current);
  if (!*timeo) {
   if (!ssk || netlink_is_kernel(ssk))
    netlink_overrun(sk);
   sock_put(sk);
   kfree_skb(skb);
   return -EAGAIN;
  }

  __set_current_state(TASK_INTERRUPTIBLE);
  add_wait_queue(&nlk->wait, &wait);

  if ((atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
       test_bit(NETLINK_S_CONGESTED, &nlk->state)) &&
      !sock_flag(sk, SOCK_DEAD))
   *timeo = schedule_timeout(*timeo);

  __set_current_state(TASK_RUNNING);
  remove_wait_queue(&nlk->wait, &wait);
  sock_put(sk);

  if (signal_pending(current)) {
   kfree_skb(skb);
   return sock_intr_errno(*timeo);
  }
  return 1;
 }
 netlink_skb_set_owner_r(skb, sk);
 return 0;
}
