
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int pending_links; } ;
struct sock {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int sock_hold (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

void vsock_add_pending(struct sock *listener, struct sock *pending)
{
 struct vsock_sock *vlistener;
 struct vsock_sock *vpending;

 vlistener = vsock_sk(listener);
 vpending = vsock_sk(pending);

 sock_hold(pending);
 sock_hold(listener);
 list_add_tail(&vpending->pending_links, &vlistener->pending_links);
}
