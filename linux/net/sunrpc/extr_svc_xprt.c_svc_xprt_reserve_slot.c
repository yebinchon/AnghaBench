
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_nr_rqsts; } ;
struct svc_rqst {int rq_flags; } ;


 int RQ_DATA ;
 int atomic_inc (int *) ;
 int set_bit (int ,int *) ;
 int svc_xprt_slots_in_range (struct svc_xprt*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool svc_xprt_reserve_slot(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
 if (!test_bit(RQ_DATA, &rqstp->rq_flags)) {
  if (!svc_xprt_slots_in_range(xprt))
   return 0;
  atomic_inc(&xprt->xpt_nr_rqsts);
  set_bit(RQ_DATA, &rqstp->rq_flags);
 }
 return 1;
}
