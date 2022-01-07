
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_resp; } ;
typedef int __be32 ;


 int __nlmsvc_proc_lock (struct svc_rqst*,int ) ;

__attribute__((used)) static __be32
nlmsvc_proc_lock(struct svc_rqst *rqstp)
{
 return __nlmsvc_proc_lock(rqstp, rqstp->rq_resp);
}
