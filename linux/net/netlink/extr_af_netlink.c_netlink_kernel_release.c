
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_socket; } ;


 int sock_release (int *) ;

void
netlink_kernel_release(struct sock *sk)
{
 if (sk == ((void*)0) || sk->sk_socket == ((void*)0))
  return;

 sock_release(sk->sk_socket);
}
