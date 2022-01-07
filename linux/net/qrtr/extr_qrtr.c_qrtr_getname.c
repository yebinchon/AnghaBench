
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_qrtr {int sq_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct qrtr_sock {struct sockaddr_qrtr us; struct sockaddr_qrtr peer; } ;
typedef int qaddr ;


 int AF_QIPCRTR ;
 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int lock_sock (struct sock*) ;
 int memcpy (struct sockaddr*,struct sockaddr_qrtr*,int) ;
 struct qrtr_sock* qrtr_sk (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int qrtr_getname(struct socket *sock, struct sockaddr *saddr,
   int peer)
{
 struct qrtr_sock *ipc = qrtr_sk(sock->sk);
 struct sockaddr_qrtr qaddr;
 struct sock *sk = sock->sk;

 lock_sock(sk);
 if (peer) {
  if (sk->sk_state != TCP_ESTABLISHED) {
   release_sock(sk);
   return -ENOTCONN;
  }

  qaddr = ipc->peer;
 } else {
  qaddr = ipc->us;
 }
 release_sock(sk);

 qaddr.sq_family = AF_QIPCRTR;

 memcpy(saddr, &qaddr, sizeof(qaddr));

 return sizeof(qaddr);
}
