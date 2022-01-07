
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct auth_ops* rq_authop; } ;
struct auth_ops {int (* release ) (struct svc_rqst*) ;} ;


 int stub1 (struct svc_rqst*) ;
 int svc_put_auth_ops (struct auth_ops*) ;

int svc_authorise(struct svc_rqst *rqstp)
{
 struct auth_ops *aops = rqstp->rq_authop;
 int rv = 0;

 rqstp->rq_authop = ((void*)0);

 if (aops) {
  rv = aops->release(rqstp);
  svc_put_auth_ops(aops);
 }
 return rv;
}
