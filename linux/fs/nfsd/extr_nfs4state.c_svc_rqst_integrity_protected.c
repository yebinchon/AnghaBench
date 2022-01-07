
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct svc_cred {int cr_flavor; int cr_gss_mech; } ;
struct svc_rqst {struct svc_cred rq_cred; } ;


 scalar_t__ RPC_GSS_SVC_INTEGRITY ;
 scalar_t__ RPC_GSS_SVC_PRIVACY ;
 scalar_t__ gss_pseudoflavor_to_service (int ,int ) ;

__attribute__((used)) static bool svc_rqst_integrity_protected(struct svc_rqst *rqstp)
{
 struct svc_cred *cr = &rqstp->rq_cred;
 u32 service;

 if (!cr->cr_gss_mech)
  return 0;
 service = gss_pseudoflavor_to_service(cr->cr_gss_mech, cr->cr_flavor);
 return service == RPC_GSS_SVC_INTEGRITY ||
        service == RPC_GSS_SVC_PRIVACY;
}
