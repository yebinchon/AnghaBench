
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct svc_rqst {TYPE_1__* rq_xprt; } ;
struct cred {struct user_namespace* user_ns; } ;
struct TYPE_2__ {struct cred* xpt_cred; } ;


 struct user_namespace init_user_ns ;

__attribute__((used)) static inline struct user_namespace *
nfsd_user_namespace(const struct svc_rqst *rqstp)
{
 const struct cred *cred = rqstp->rq_xprt->xpt_cred;
 return cred ? cred->user_ns : &init_user_ns;
}
