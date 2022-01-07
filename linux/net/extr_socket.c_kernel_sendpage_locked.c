
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sock {struct socket* sk_socket; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int (* sendpage_locked ) (struct sock*,struct page*,int,size_t,int) ;} ;


 int sock_no_sendpage_locked (struct sock*,struct page*,int,size_t,int) ;
 int stub1 (struct sock*,struct page*,int,size_t,int) ;

int kernel_sendpage_locked(struct sock *sk, struct page *page, int offset,
      size_t size, int flags)
{
 struct socket *sock = sk->sk_socket;

 if (sock->ops->sendpage_locked)
  return sock->ops->sendpage_locked(sk, page, offset, size,
        flags);

 return sock_no_sendpage_locked(sk, page, offset, size, flags);
}
