
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_2__ {struct sock* (* accept ) (struct sock*,int,int*,int) ;} ;


 int EINVAL ;
 int SS_CONNECTED ;
 int TCPF_CLOSE ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int WARN_ON (int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_graft (struct sock*,struct socket*) ;
 int sock_rps_record_flow (struct sock*) ;
 struct sock* stub1 (struct sock*,int,int*,int) ;

int inet_accept(struct socket *sock, struct socket *newsock, int flags,
  bool kern)
{
 struct sock *sk1 = sock->sk;
 int err = -EINVAL;
 struct sock *sk2 = sk1->sk_prot->accept(sk1, flags, &err, kern);

 if (!sk2)
  goto do_err;

 lock_sock(sk2);

 sock_rps_record_flow(sk2);
 WARN_ON(!((1 << sk2->sk_state) &
    (TCPF_ESTABLISHED | TCPF_SYN_RECV |
    TCPF_CLOSE_WAIT | TCPF_CLOSE)));

 sock_graft(sk2, newsock);

 newsock->state = SS_CONNECTED;
 err = 0;
 release_sock(sk2);
do_err:
 return err;
}
