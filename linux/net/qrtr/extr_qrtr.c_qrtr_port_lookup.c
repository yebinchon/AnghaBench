
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_sock {int sk; } ;


 int QRTR_PORT_CTRL ;
 struct qrtr_sock* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qrtr_port_lock ;
 int qrtr_ports ;
 int sock_hold (int *) ;

__attribute__((used)) static struct qrtr_sock *qrtr_port_lookup(int port)
{
 struct qrtr_sock *ipc;

 if (port == QRTR_PORT_CTRL)
  port = 0;

 mutex_lock(&qrtr_port_lock);
 ipc = idr_find(&qrtr_ports, port);
 if (ipc)
  sock_hold(&ipc->sk);
 mutex_unlock(&qrtr_port_lock);

 return ipc;
}
