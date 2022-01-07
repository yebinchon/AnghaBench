
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* xpt_server; } ;
struct svc_sock {struct socket* sk_sock; TYPE_2__ sk_xprt; } ;
struct socket {TYPE_3__* sk; } ;
struct TYPE_8__ {unsigned int sk_sndbuf; unsigned int sk_rcvbuf; int (* sk_write_space ) (TYPE_3__*) ;} ;
struct TYPE_6__ {unsigned int sv_max_mesg; } ;


 int INT_MAX ;
 int lock_sock (TYPE_3__*) ;
 unsigned int min (unsigned int,int) ;
 int release_sock (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void svc_sock_setbufsize(struct svc_sock *svsk, unsigned int nreqs)
{
 unsigned int max_mesg = svsk->sk_xprt.xpt_server->sv_max_mesg;
 struct socket *sock = svsk->sk_sock;

 nreqs = min(nreqs, INT_MAX / 2 / max_mesg);

 lock_sock(sock->sk);
 sock->sk->sk_sndbuf = nreqs * max_mesg * 2;
 sock->sk->sk_rcvbuf = nreqs * max_mesg * 2;
 sock->sk->sk_write_space(sock->sk);
 release_sock(sock->sk);
}
