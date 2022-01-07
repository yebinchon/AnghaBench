
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_accessres* rq_resp; struct nfsd3_accessargs* rq_argp; } ;
struct nfsd3_accessres {int stat; int fh; int access; } ;
struct nfsd3_accessargs {int access; int fh; } ;
typedef scalar_t__ __be32 ;


 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ) ;
 int fh_copy (int *,int *) ;
 scalar_t__ fh_getattr (int *,int *) ;
 scalar_t__ nfsd_access (struct svc_rqst*,int *,int *,int *) ;

__attribute__((used)) static __be32 nfsacld_proc_access(struct svc_rqst *rqstp)
{
 struct nfsd3_accessargs *argp = rqstp->rq_argp;
 struct nfsd3_accessres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: ACCESS(2acl)   %s 0x%x\n",
   SVCFH_fmt(&argp->fh),
   argp->access);

 fh_copy(&resp->fh, &argp->fh);
 resp->access = argp->access;
 nfserr = nfsd_access(rqstp, &resp->fh, &resp->access, ((void*)0));
 if (nfserr)
  return nfserr;
 nfserr = fh_getattr(&resp->fh, &resp->stat);
 return nfserr;
}
