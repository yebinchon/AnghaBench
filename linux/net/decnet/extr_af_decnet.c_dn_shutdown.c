
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_shutdown; } ;
struct dn_scp {scalar_t__ state; } ;


 scalar_t__ DN_O ;
 struct dn_scp* DN_SK (struct sock*) ;
 int EINVAL ;
 int ENOTCONN ;
 int SHUTDOWN_MASK ;
 int SHUT_RDWR ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 int dn_destroy_sock (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int dn_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 struct dn_scp *scp = DN_SK(sk);
 int err = -ENOTCONN;

 lock_sock(sk);

 if (sock->state == SS_UNCONNECTED)
  goto out;

 err = 0;
 if (sock->state == SS_DISCONNECTING)
  goto out;

 err = -EINVAL;
 if (scp->state == DN_O)
  goto out;

 if (how != SHUT_RDWR)
  goto out;

 sk->sk_shutdown = SHUTDOWN_MASK;
 dn_destroy_sock(sk);
 err = 0;

out:
 release_sock(sk);

 return err;
}
