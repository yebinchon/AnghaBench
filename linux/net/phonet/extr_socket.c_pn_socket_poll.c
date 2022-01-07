
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_sndbuf; int sk_wmem_alloc; int sk_receive_queue; } ;
struct pep_sock {int tx_credits; int ctrlreq_queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_CLOSE_WAIT ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ atomic_read (int *) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int poll_wait (struct file*,int ,int *) ;
 scalar_t__ refcount_read (int *) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;

__attribute__((used)) static __poll_t pn_socket_poll(struct file *file, struct socket *sock,
     poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct pep_sock *pn = pep_sk(sk);
 __poll_t mask = 0;

 poll_wait(file, sk_sleep(sk), wait);

 if (sk->sk_state == TCP_CLOSE)
  return EPOLLERR;
 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;
 if (!skb_queue_empty_lockless(&pn->ctrlreq_queue))
  mask |= EPOLLPRI;
 if (!mask && sk->sk_state == TCP_CLOSE_WAIT)
  return EPOLLHUP;

 if (sk->sk_state == TCP_ESTABLISHED &&
  refcount_read(&sk->sk_wmem_alloc) < sk->sk_sndbuf &&
  atomic_read(&pn->tx_credits))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

 return mask;
}
