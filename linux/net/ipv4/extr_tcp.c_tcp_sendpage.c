
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct page {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int tcp_sendpage_locked (struct sock*,struct page*,int,size_t,int) ;

int tcp_sendpage(struct sock *sk, struct page *page, int offset,
   size_t size, int flags)
{
 int ret;

 lock_sock(sk);
 ret = tcp_sendpage_locked(sk, page, offset, size, flags);
 release_sock(sk);

 return ret;
}
