
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_cred {scalar_t__ cr_gss_mech; int cr_principal; int cr_raw_principal; } ;
struct svc_rqst {struct svc_cred rq_cred; } ;
struct TYPE_2__ {scalar_t__ cr_gss_mech; scalar_t__ cr_principal; scalar_t__ cr_raw_principal; } ;
struct nfs4_client {TYPE_1__ cl_cred; int cl_mach_cred; } ;


 scalar_t__ strcmp (scalar_t__,int ) ;
 int svc_rqst_integrity_protected (struct svc_rqst*) ;

bool nfsd4_mach_creds_match(struct nfs4_client *cl, struct svc_rqst *rqstp)
{
 struct svc_cred *cr = &rqstp->rq_cred;

 if (!cl->cl_mach_cred)
  return 1;
 if (cl->cl_cred.cr_gss_mech != cr->cr_gss_mech)
  return 0;
 if (!svc_rqst_integrity_protected(rqstp))
  return 0;
 if (cl->cl_cred.cr_raw_principal)
  return 0 == strcmp(cl->cl_cred.cr_raw_principal,
      cr->cr_raw_principal);
 if (!cr->cr_principal)
  return 0;
 return 0 == strcmp(cl->cl_cred.cr_principal, cr->cr_principal);
}
