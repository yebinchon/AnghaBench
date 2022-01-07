
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_sock {int sk; } ;


 int sock_put (int *) ;

__attribute__((used)) static void qrtr_port_put(struct qrtr_sock *ipc)
{
 sock_put(&ipc->sk);
}
