
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_can {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct j1939_sock {int state; } ;


 int EADDRNOTAVAIL ;
 int J1939_MIN_NAMELEN ;
 int J1939_SOCK_CONNECTED ;
 struct j1939_sock* j1939_sk (struct sock*) ;
 int j1939_sk_sock2sockaddr_can (struct sockaddr_can*,struct j1939_sock*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int j1939_sk_getname(struct socket *sock, struct sockaddr *uaddr,
       int peer)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct sock *sk = sock->sk;
 struct j1939_sock *jsk = j1939_sk(sk);
 int ret = 0;

 lock_sock(sk);

 if (peer && !(jsk->state & J1939_SOCK_CONNECTED)) {
  ret = -EADDRNOTAVAIL;
  goto failure;
 }

 j1939_sk_sock2sockaddr_can(addr, jsk, peer);
 ret = J1939_MIN_NAMELEN;

 failure:
 release_sock(sk);

 return ret;
}
