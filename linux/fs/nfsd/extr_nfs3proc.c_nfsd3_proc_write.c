
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages; } ;
struct svc_rqst {int rq_vec; TYPE_1__ rq_arg; struct nfsd3_writeres* rq_resp; struct nfsd3_writeargs* rq_argp; } ;
struct nfsd3_writeres {unsigned long count; scalar_t__ committed; int fh; } ;
struct nfsd3_writeargs {unsigned long len; scalar_t__ offset; int first; scalar_t__ stable; int fh; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,unsigned long long,char*) ;
 int fh_copy (int *,int *) ;
 int nfsd_write (struct svc_rqst*,int *,scalar_t__,int ,unsigned int,unsigned long*,scalar_t__) ;
 int nfserr_io ;
 unsigned int svc_fill_write_vector (struct svc_rqst*,int ,int *,unsigned long) ;

__attribute__((used)) static __be32
nfsd3_proc_write(struct svc_rqst *rqstp)
{
 struct nfsd3_writeargs *argp = rqstp->rq_argp;
 struct nfsd3_writeres *resp = rqstp->rq_resp;
 __be32 nfserr;
 unsigned long cnt = argp->len;
 unsigned int nvecs;

 dprintk("nfsd: WRITE(3)    %s %d bytes at %Lu%s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    (unsigned long long) argp->offset,
    argp->stable? " stable" : "");

 fh_copy(&resp->fh, &argp->fh);
 resp->committed = argp->stable;
 nvecs = svc_fill_write_vector(rqstp, rqstp->rq_arg.pages,
          &argp->first, cnt);
 if (!nvecs)
  RETURN_STATUS(nfserr_io);
 nfserr = nfsd_write(rqstp, &resp->fh, argp->offset,
       rqstp->rq_vec, nvecs, &cnt,
       resp->committed);
 resp->count = cnt;
 RETURN_STATUS(nfserr);
}
