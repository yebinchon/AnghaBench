
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int flags; int cudmatchlength; int dte_facilities; int facilities; int t2; int t23; int t22; int t21; } ;
struct sock {scalar_t__ sk_type; int sk_backlog_rcv; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int sk_priority; } ;


 scalar_t__ SOCK_SEQPACKET ;
 int TCP_ESTABLISHED ;
 int X25_INTERRUPT_FLAG ;
 int clear_bit (int ,int *) ;
 int sock_copy_flags (struct sock*,struct sock*) ;
 int sock_net (struct sock*) ;
 struct sock* x25_alloc_socket (int ,int ) ;
 int x25_init_timers (struct sock*) ;
 struct x25_sock* x25_sk (struct sock*) ;

__attribute__((used)) static struct sock *x25_make_new(struct sock *osk)
{
 struct sock *sk = ((void*)0);
 struct x25_sock *x25, *ox25;

 if (osk->sk_type != SOCK_SEQPACKET)
  goto out;

 if ((sk = x25_alloc_socket(sock_net(osk), 0)) == ((void*)0))
  goto out;

 x25 = x25_sk(sk);

 sk->sk_type = osk->sk_type;
 sk->sk_priority = osk->sk_priority;
 sk->sk_protocol = osk->sk_protocol;
 sk->sk_rcvbuf = osk->sk_rcvbuf;
 sk->sk_sndbuf = osk->sk_sndbuf;
 sk->sk_state = TCP_ESTABLISHED;
 sk->sk_backlog_rcv = osk->sk_backlog_rcv;
 sock_copy_flags(sk, osk);

 ox25 = x25_sk(osk);
 x25->t21 = ox25->t21;
 x25->t22 = ox25->t22;
 x25->t23 = ox25->t23;
 x25->t2 = ox25->t2;
 x25->flags = ox25->flags;
 x25->facilities = ox25->facilities;
 x25->dte_facilities = ox25->dte_facilities;
 x25->cudmatchlength = ox25->cudmatchlength;

 clear_bit(X25_INTERRUPT_FLAG, &x25->flags);
 x25_init_timers(sk);
out:
 return sk;
}
