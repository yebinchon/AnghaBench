
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_nr_rqsts; } ;
struct svc_rqst {int rq_flags; struct svc_xprt* rq_xprt; } ;


 int RQ_DATA ;
 int atomic_dec (int *) ;
 int smp_wmb () ;
 int svc_xprt_enqueue (struct svc_xprt*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void svc_xprt_release_slot(struct svc_rqst *rqstp)
{
 struct svc_xprt *xprt = rqstp->rq_xprt;
 if (test_and_clear_bit(RQ_DATA, &rqstp->rq_flags)) {
  atomic_dec(&xprt->xpt_nr_rqsts);
  smp_wmb();
  svc_xprt_enqueue(xprt);
 }
}
