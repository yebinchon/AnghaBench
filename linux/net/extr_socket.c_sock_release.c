
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int __sock_release (struct socket*,int *) ;

void sock_release(struct socket *sock)
{
 __sock_release(sock, ((void*)0));
}
