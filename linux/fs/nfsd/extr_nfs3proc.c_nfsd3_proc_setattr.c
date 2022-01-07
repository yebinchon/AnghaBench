
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_attrstat* rq_resp; struct nfsd3_sattrargs* rq_argp; } ;
struct nfsd3_sattrargs {int guardtime; int check_guard; int attrs; int fh; } ;
struct nfsd3_attrstat {int fh; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_copy (int *,int *) ;
 int nfsd_setattr (struct svc_rqst*,int *,int *,int ,int ) ;

__attribute__((used)) static __be32
nfsd3_proc_setattr(struct svc_rqst *rqstp)
{
 struct nfsd3_sattrargs *argp = rqstp->rq_argp;
 struct nfsd3_attrstat *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: SETATTR(3)  %s\n",
    SVCFH_fmt(&argp->fh));

 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_setattr(rqstp, &resp->fh, &argp->attrs,
         argp->check_guard, argp->guardtime);
 RETURN_STATUS(nfserr);
}
