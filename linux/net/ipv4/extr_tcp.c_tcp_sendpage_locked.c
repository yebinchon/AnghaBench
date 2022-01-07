
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_route_caps; } ;
struct page {int dummy; } ;


 int NETIF_F_SG ;
 int do_tcp_sendpages (struct sock*,struct page*,int,size_t,int) ;
 int sock_no_sendpage_locked (struct sock*,struct page*,int,size_t,int) ;
 int tcp_rate_check_app_limited (struct sock*) ;

int tcp_sendpage_locked(struct sock *sk, struct page *page, int offset,
   size_t size, int flags)
{
 if (!(sk->sk_route_caps & NETIF_F_SG))
  return sock_no_sendpage_locked(sk, page, offset, size, flags);

 tcp_rate_check_app_limited(sk);

 return do_tcp_sendpages(sk, page, offset, size, flags);
}
