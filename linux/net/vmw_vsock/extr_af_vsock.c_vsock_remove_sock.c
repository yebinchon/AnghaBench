
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;


 int vsock_remove_bound (struct vsock_sock*) ;
 int vsock_remove_connected (struct vsock_sock*) ;

void vsock_remove_sock(struct vsock_sock *vsk)
{
 vsock_remove_bound(vsk);
 vsock_remove_connected(vsk);
}
