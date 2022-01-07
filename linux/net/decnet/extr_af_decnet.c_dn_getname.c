
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_dn {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct dn_scp {scalar_t__ accept_mode; int addr; int peer; } ;


 scalar_t__ ACC_IMMED ;
 struct dn_scp* DN_SK (struct sock*) ;
 int ENOTCONN ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 int lock_sock (struct sock*) ;
 int memcpy (struct sockaddr_dn*,int *,int) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int dn_getname(struct socket *sock, struct sockaddr *uaddr,int peer)
{
 struct sockaddr_dn *sa = (struct sockaddr_dn *)uaddr;
 struct sock *sk = sock->sk;
 struct dn_scp *scp = DN_SK(sk);

 lock_sock(sk);

 if (peer) {
  if ((sock->state != SS_CONNECTED &&
       sock->state != SS_CONNECTING) &&
      scp->accept_mode == ACC_IMMED) {
   release_sock(sk);
   return -ENOTCONN;
  }

  memcpy(sa, &scp->peer, sizeof(struct sockaddr_dn));
 } else {
  memcpy(sa, &scp->addr, sizeof(struct sockaddr_dn));
 }

 release_sock(sk);

 return sizeof(struct sockaddr_dn);
}
