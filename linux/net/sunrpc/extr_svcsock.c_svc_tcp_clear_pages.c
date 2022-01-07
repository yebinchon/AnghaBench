
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_sock {unsigned int sk_datalen; scalar_t__ sk_tcplen; int ** sk_pages; } ;


 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int WARN_ON_ONCE (int) ;
 int put_page (int *) ;

__attribute__((used)) static void svc_tcp_clear_pages(struct svc_sock *svsk)
{
 unsigned int i, len, npages;

 if (svsk->sk_datalen == 0)
  goto out;
 len = svsk->sk_datalen;
 npages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 for (i = 0; i < npages; i++) {
  if (svsk->sk_pages[i] == ((void*)0)) {
   WARN_ON_ONCE(1);
   continue;
  }
  put_page(svsk->sk_pages[i]);
  svsk->sk_pages[i] = ((void*)0);
 }
out:
 svsk->sk_tcplen = 0;
 svsk->sk_datalen = 0;
}
