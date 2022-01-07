
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_receive_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ traffic_class; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; int flags; } ;
typedef int poll_table ;
typedef int __poll_t ;


 scalar_t__ ATM_NONE ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 scalar_t__ SS_CONNECTING ;
 int skb_queue_empty_lockless (int *) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ vcc_writable (struct sock*) ;

__poll_t vcc_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc;
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;

 vcc = ATM_SD(sock);


 if (sk->sk_err)
  mask = EPOLLERR;

 if (test_bit(ATM_VF_RELEASED, &vcc->flags) ||
     test_bit(ATM_VF_CLOSE, &vcc->flags))
  mask |= EPOLLHUP;


 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;


 if (sock->state == SS_CONNECTING &&
     test_bit(ATM_VF_WAITING, &vcc->flags))
  return mask;

 if (vcc->qos.txtp.traffic_class != ATM_NONE &&
     vcc_writable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

 return mask;
}
