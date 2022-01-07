
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_locallen; int xpt_local; int xpt_remotelen; int xpt_remote; } ;
struct svc_rqst {int rq_daddrlen; int rq_daddr; int rq_addrlen; int rq_addr; } ;


 int memcpy (int *,int *,int ) ;

void svc_xprt_copy_addrs(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
 memcpy(&rqstp->rq_addr, &xprt->xpt_remote, xprt->xpt_remotelen);
 rqstp->rq_addrlen = xprt->xpt_remotelen;





 memcpy(&rqstp->rq_daddr, &xprt->xpt_local, xprt->xpt_locallen);
 rqstp->rq_daddrlen = xprt->xpt_locallen;
}
