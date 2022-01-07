
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_xprt; } ;


 int dprintk (char*,int ) ;
 int svc_xprt_release (struct svc_rqst*) ;
 int trace_svc_drop (struct svc_rqst*) ;

void svc_drop(struct svc_rqst *rqstp)
{
 trace_svc_drop(rqstp);
 dprintk("svc: xprt %p dropped request\n", rqstp->rq_xprt);
 svc_xprt_release(rqstp);
}
