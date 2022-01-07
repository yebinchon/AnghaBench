
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_qrtr {int sq_port; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int sq_port; } ;
struct qrtr_sock {TYPE_1__ us; } ;


 int QRTR_PORT_CTRL ;
 int SOCK_ZAPPED ;
 int qrtr_port_assign (struct qrtr_sock*,int*) ;
 int qrtr_port_remove (struct qrtr_sock*) ;
 int qrtr_reset_ports () ;
 struct qrtr_sock* qrtr_sk (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int __qrtr_bind(struct socket *sock,
         const struct sockaddr_qrtr *addr, int zapped)
{
 struct qrtr_sock *ipc = qrtr_sk(sock->sk);
 struct sock *sk = sock->sk;
 int port;
 int rc;


 if (!zapped && addr->sq_port == ipc->us.sq_port)
  return 0;

 port = addr->sq_port;
 rc = qrtr_port_assign(ipc, &port);
 if (rc)
  return rc;


 if (!zapped)
  qrtr_port_remove(ipc);
 ipc->us.sq_port = port;

 sock_reset_flag(sk, SOCK_ZAPPED);


 if (port == QRTR_PORT_CTRL)
  qrtr_reset_ports();

 return 0;
}
