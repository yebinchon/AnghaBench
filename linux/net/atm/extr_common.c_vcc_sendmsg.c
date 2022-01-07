
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; int * dev; int truesize; } ;
struct msghdr {int msg_flags; int msg_iter; scalar_t__ msg_name; } ;
struct TYPE_5__ {size_t max_sdu; } ;
struct TYPE_6__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_4__* dev; int flags; TYPE_2__ qos; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* send ) (struct atm_vcc*,struct sk_buff*) ;} ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_READY ;
 int ATM_VF_RELEASED ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EFAULT ;
 int EISCONN ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ENOTCONN ;
 int EPIPE ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 int SIGPIPE ;
 scalar_t__ SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_account_tx (struct atm_vcc*,struct sk_buff*) ;
 int copy_from_iter_full (int ,size_t,int *) ;
 int current ;
 int finish_wait (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memset (scalar_t__,int ,int) ;
 int pr_debug (char*,int ,int ) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sk_wmem_alloc_get (struct sock*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 int vcc_tx_ready (struct atm_vcc*,int) ;
 int wait ;

int vcc_sendmsg(struct socket *sock, struct msghdr *m, size_t size)
{
 struct sock *sk = sock->sk;
 DEFINE_WAIT(wait);
 struct atm_vcc *vcc;
 struct sk_buff *skb;
 int eff, error;

 lock_sock(sk);
 if (sock->state != SS_CONNECTED) {
  error = -ENOTCONN;
  goto out;
 }
 if (m->msg_name) {
  error = -EISCONN;
  goto out;
 }
 vcc = ATM_SD(sock);
 if (test_bit(ATM_VF_RELEASED, &vcc->flags) ||
     test_bit(ATM_VF_CLOSE, &vcc->flags) ||
     !test_bit(ATM_VF_READY, &vcc->flags)) {
  error = -EPIPE;
  send_sig(SIGPIPE, current, 0);
  goto out;
 }
 if (!size) {
  error = 0;
  goto out;
 }
 if (size > vcc->qos.txtp.max_sdu) {
  error = -EMSGSIZE;
  goto out;
 }

 eff = (size+3) & ~3;
 prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 error = 0;
 while (!vcc_tx_ready(vcc, eff)) {
  if (m->msg_flags & MSG_DONTWAIT) {
   error = -EAGAIN;
   break;
  }
  schedule();
  if (signal_pending(current)) {
   error = -ERESTARTSYS;
   break;
  }
  if (test_bit(ATM_VF_RELEASED, &vcc->flags) ||
      test_bit(ATM_VF_CLOSE, &vcc->flags) ||
      !test_bit(ATM_VF_READY, &vcc->flags)) {
   error = -EPIPE;
   send_sig(SIGPIPE, current, 0);
   break;
  }
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk_sleep(sk), &wait);
 if (error)
  goto out;

 skb = alloc_skb(eff, GFP_KERNEL);
 if (!skb) {
  error = -ENOMEM;
  goto out;
 }
 pr_debug("%d += %d\n", sk_wmem_alloc_get(sk), skb->truesize);
 atm_account_tx(vcc, skb);

 skb->dev = ((void*)0);
 if (!copy_from_iter_full(skb_put(skb, size), size, &m->msg_iter)) {
  kfree_skb(skb);
  error = -EFAULT;
  goto out;
 }
 if (eff != size)
  memset(skb->data + size, 0, eff-size);
 error = vcc->dev->ops->send(vcc, skb);
 error = error ? error : size;
out:
 release_sock(sk);
 return error;
}
