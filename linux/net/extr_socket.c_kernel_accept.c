
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int sk_protocol; int sk_type; int sk_family; } ;
struct TYPE_2__ {int (* accept ) (struct socket*,struct socket*,int,int) ;int owner; } ;


 int __module_get (int ) ;
 int sock_create_lite (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct socket*,int,int) ;

int kernel_accept(struct socket *sock, struct socket **newsock, int flags)
{
 struct sock *sk = sock->sk;
 int err;

 err = sock_create_lite(sk->sk_family, sk->sk_type, sk->sk_protocol,
          newsock);
 if (err < 0)
  goto done;

 err = sock->ops->accept(sock, *newsock, flags, 1);
 if (err < 0) {
  sock_release(*newsock);
  *newsock = ((void*)0);
  goto done;
 }

 (*newsock)->ops = sock->ops;
 __module_get((*newsock)->ops->owner);

done:
 return err;
}
