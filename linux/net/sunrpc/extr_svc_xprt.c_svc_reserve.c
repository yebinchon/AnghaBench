
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {int xpt_reserved; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct svc_rqst {int rq_reserved; TYPE_2__ rq_res; struct svc_xprt* rq_xprt; } ;
struct TYPE_3__ {scalar_t__ iov_len; } ;


 int atomic_sub (int,int *) ;
 int smp_wmb () ;
 int svc_xprt_enqueue (struct svc_xprt*) ;

void svc_reserve(struct svc_rqst *rqstp, int space)
{
 struct svc_xprt *xprt = rqstp->rq_xprt;

 space += rqstp->rq_res.head[0].iov_len;

 if (xprt && space < rqstp->rq_reserved) {
  atomic_sub((rqstp->rq_reserved - space), &xprt->xpt_reserved);
  rqstp->rq_reserved = space;
  smp_wmb();
  svc_xprt_enqueue(xprt);
 }
}
