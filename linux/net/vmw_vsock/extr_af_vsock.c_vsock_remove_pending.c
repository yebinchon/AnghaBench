
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int pending_links; } ;
struct sock {int dummy; } ;


 int list_del_init (int *) ;
 int sock_put (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

void vsock_remove_pending(struct sock *listener, struct sock *pending)
{
 struct vsock_sock *vpending = vsock_sk(pending);

 list_del_init(&vpending->pending_links);
 sock_put(listener);
 sock_put(pending);
}
