
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; } ;
struct file {int f_flags; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int reader_queue; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int O_NONBLOCK ;
 int RCV_SHUTDOWN ;
 int datagram_poll (struct file*,struct socket*,int *) ;
 int first_packet_length (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 TYPE_1__* udp_sk (struct sock*) ;

__poll_t udp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 __poll_t mask = datagram_poll(file, sock, wait);
 struct sock *sk = sock->sk;

 if (!skb_queue_empty_lockless(&udp_sk(sk)->reader_queue))
  mask |= EPOLLIN | EPOLLRDNORM;


 if ((mask & EPOLLRDNORM) && !(file->f_flags & O_NONBLOCK) &&
     !(sk->sk_shutdown & RCV_SHUTDOWN) && first_packet_length(sk) == -1)
  mask &= ~(EPOLLIN | EPOLLRDNORM);

 return mask;

}
