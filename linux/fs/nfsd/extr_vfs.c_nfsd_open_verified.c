
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct file {int dummy; } ;
typedef int __be32 ;


 int __nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int,struct file**) ;
 int validate_process_creds () ;

__be32
nfsd_open_verified(struct svc_rqst *rqstp, struct svc_fh *fhp, umode_t type,
  int may_flags, struct file **filp)
{
 __be32 err;

 validate_process_creds();
 err = __nfsd_open(rqstp, fhp, type, may_flags, filp);
 validate_process_creds();
 return err;
}
