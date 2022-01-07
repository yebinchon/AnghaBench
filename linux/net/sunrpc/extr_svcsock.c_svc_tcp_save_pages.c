
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_sock {unsigned int sk_datalen; int ** sk_pages; } ;
struct svc_rqst {int ** rq_pages; } ;


 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static void svc_tcp_save_pages(struct svc_sock *svsk, struct svc_rqst *rqstp)
{
 unsigned int i, len, npages;

 if (svsk->sk_datalen == 0)
  return;
 len = svsk->sk_datalen;
 npages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 for (i = 0; i < npages; i++) {
  svsk->sk_pages[i] = rqstp->rq_pages[i];
  rqstp->rq_pages[i] = ((void*)0);
 }
}
