
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; int * sk; } ;


 int SS_FREE ;
 int __vsock_release (int *,int ) ;

__attribute__((used)) static int vsock_release(struct socket *sock)
{
 __vsock_release(sock->sk, 0);
 sock->sk = ((void*)0);
 sock->state = SS_FREE;

 return 0;
}
