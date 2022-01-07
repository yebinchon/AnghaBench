
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * head; } ;
struct svc_rqst {struct auth_ops* rq_authop; int rq_cred; scalar_t__ rq_auth_slack; TYPE_1__ rq_arg; } ;
struct auth_ops {int (* accept ) (struct svc_rqst*,int *) ;} ;
typedef int rpc_authflavor_t ;
typedef int __be32 ;


 int SVC_DENIED ;
 int dprintk (char*,int ) ;
 int init_svc_cred (int *) ;
 int rpc_auth_ok ;
 int rpc_autherr_badcred ;
 int stub1 (struct svc_rqst*,int *) ;
 struct auth_ops* svc_get_auth_ops (int ) ;
 int svc_getnl (int *) ;

int
svc_authenticate(struct svc_rqst *rqstp, __be32 *authp)
{
 rpc_authflavor_t flavor;
 struct auth_ops *aops;

 *authp = rpc_auth_ok;

 flavor = svc_getnl(&rqstp->rq_arg.head[0]);

 dprintk("svc: svc_authenticate (%d)\n", flavor);

 aops = svc_get_auth_ops(flavor);
 if (aops == ((void*)0)) {
  *authp = rpc_autherr_badcred;
  return SVC_DENIED;
 }

 rqstp->rq_auth_slack = 0;
 init_svc_cred(&rqstp->rq_cred);

 rqstp->rq_authop = aops;
 return aops->accept(rqstp, authp);
}
