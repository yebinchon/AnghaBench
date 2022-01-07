
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_qrtr {scalar_t__ sq_port; int sq_node; int sq_family; } ;
struct sock {int dummy; } ;


 int AF_QIPCRTR ;
 int SOCK_ZAPPED ;
 int __qrtr_bind (struct socket*,struct sockaddr_qrtr*,int) ;
 int qrtr_local_nid ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static int qrtr_autobind(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct sockaddr_qrtr addr;

 if (!sock_flag(sk, SOCK_ZAPPED))
  return 0;

 addr.sq_family = AF_QIPCRTR;
 addr.sq_node = qrtr_local_nid;
 addr.sq_port = 0;

 return __qrtr_bind(sock, &addr, 1);
}
