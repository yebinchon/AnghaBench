
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_attrstat* rq_resp; struct nfsd_fhandle* rq_argp; } ;
struct nfsd_fhandle {int fh; } ;
struct nfsd_attrstat {int stat; int fh; } ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_NOP ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_copy (int *,int *) ;
 scalar_t__ fh_getattr (int *,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;

__attribute__((used)) static __be32 nfsacld_proc_getattr(struct svc_rqst *rqstp)
{
 struct nfsd_fhandle *argp = rqstp->rq_argp;
 struct nfsd_attrstat *resp = rqstp->rq_resp;
 __be32 nfserr;
 dprintk("nfsd: GETATTR  %s\n", SVCFH_fmt(&argp->fh));

 fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
 if (nfserr)
  return nfserr;
 nfserr = fh_getattr(&resp->fh, &resp->stat);
 return nfserr;
}
