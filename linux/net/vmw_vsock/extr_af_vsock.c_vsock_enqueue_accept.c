
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int accept_queue; } ;
struct sock {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int sock_hold (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

void vsock_enqueue_accept(struct sock *listener, struct sock *connected)
{
 struct vsock_sock *vlistener;
 struct vsock_sock *vconnected;

 vlistener = vsock_sk(listener);
 vconnected = vsock_sk(connected);

 sock_hold(connected);
 sock_hold(listener);
 list_add_tail(&vconnected->accept_queue, &vlistener->accept_queue);
}
