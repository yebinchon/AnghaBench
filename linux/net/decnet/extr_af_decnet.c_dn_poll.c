
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;
struct dn_scp {int other_receive_queue; } ;
typedef int poll_table ;
typedef int __poll_t ;


 struct dn_scp* DN_SK (struct sock*) ;
 int EPOLLRDBAND ;
 int datagram_poll (struct file*,struct socket*,int *) ;
 int skb_queue_empty_lockless (int *) ;

__attribute__((used)) static __poll_t dn_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct dn_scp *scp = DN_SK(sk);
 __poll_t mask = datagram_poll(file, sock, wait);

 if (!skb_queue_empty_lockless(&scp->other_receive_queue))
  mask |= EPOLLRDBAND;

 return mask;
}
