
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int source_addr; int dest_addr; } ;
struct socket {struct sock* sk; } ;
struct sockaddr_x25 {int sx25_family; int sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;


 int AF_X25 ;
 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 struct x25_sock* x25_sk (struct sock*) ;

__attribute__((used)) static int x25_getname(struct socket *sock, struct sockaddr *uaddr,
         int peer)
{
 struct sockaddr_x25 *sx25 = (struct sockaddr_x25 *)uaddr;
 struct sock *sk = sock->sk;
 struct x25_sock *x25 = x25_sk(sk);
 int rc = 0;

 if (peer) {
  if (sk->sk_state != TCP_ESTABLISHED) {
   rc = -ENOTCONN;
   goto out;
  }
  sx25->sx25_addr = x25->dest_addr;
 } else
  sx25->sx25_addr = x25->source_addr;

 sx25->sx25_family = AF_X25;
 rc = sizeof(*sx25);

out:
 return rc;
}
