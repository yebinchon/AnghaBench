
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_resp; } ;
typedef int __be32 ;


 int __nlm4svc_proc_test (struct svc_rqst*,int ) ;

__attribute__((used)) static __be32
nlm4svc_proc_test(struct svc_rqst *rqstp)
{
 return __nlm4svc_proc_test(rqstp, rqstp->rq_resp);
}
