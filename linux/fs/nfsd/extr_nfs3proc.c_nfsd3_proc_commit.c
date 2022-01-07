
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_commitres* rq_resp; struct nfsd3_commitargs* rq_argp; } ;
struct nfsd3_commitres {int fh; } ;
struct nfsd3_commitargs {scalar_t__ offset; int count; int fh; } ;
typedef int __be32 ;


 scalar_t__ NFS_OFFSET_MAX ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,unsigned long long) ;
 int fh_copy (int *,int *) ;
 int nfsd_commit (struct svc_rqst*,int *,scalar_t__,int ) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd3_proc_commit(struct svc_rqst *rqstp)
{
 struct nfsd3_commitargs *argp = rqstp->rq_argp;
 struct nfsd3_commitres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: COMMIT(3)   %s %u@%Lu\n",
    SVCFH_fmt(&argp->fh),
    argp->count,
    (unsigned long long) argp->offset);

 if (argp->offset > NFS_OFFSET_MAX)
  RETURN_STATUS(nfserr_inval);

 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_commit(rqstp, &resp->fh, argp->offset, argp->count);

 RETURN_STATUS(nfserr);
}
