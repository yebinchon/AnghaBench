
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int (* sendpage ) (struct socket*,struct page*,int,size_t,int) ;} ;


 int sock_no_sendpage (struct socket*,struct page*,int,size_t,int) ;
 int stub1 (struct socket*,struct page*,int,size_t,int) ;

int kernel_sendpage(struct socket *sock, struct page *page, int offset,
      size_t size, int flags)
{
 if (sock->ops->sendpage)
  return sock->ops->sendpage(sock, page, offset, size, flags);

 return sock_no_sendpage(sock, page, offset, size, flags);
}
