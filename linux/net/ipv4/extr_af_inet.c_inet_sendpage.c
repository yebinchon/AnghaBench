
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct page {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* sendpage ) (struct sock*,struct page*,int,size_t,int) ;} ;


 int EAGAIN ;
 int inet_send_prepare (struct sock*) ;
 int sock_no_sendpage (struct socket*,struct page*,int,size_t,int) ;
 int stub1 (struct sock*,struct page*,int,size_t,int) ;
 scalar_t__ unlikely (int ) ;

ssize_t inet_sendpage(struct socket *sock, struct page *page, int offset,
        size_t size, int flags)
{
 struct sock *sk = sock->sk;

 if (unlikely(inet_send_prepare(sk)))
  return -EAGAIN;

 if (sk->sk_prot->sendpage)
  return sk->sk_prot->sendpage(sk, page, offset, size, flags);
 return sock_no_sendpage(sock, page, offset, size, flags);
}
