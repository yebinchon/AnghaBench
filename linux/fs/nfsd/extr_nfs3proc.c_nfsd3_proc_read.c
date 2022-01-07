
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int rq_vec; struct nfsd3_readres* rq_resp; struct nfsd3_readargs* rq_argp; } ;
struct nfsd3_readres {unsigned long count; int eof; int fh; } ;
struct nfsd3_readargs {int vlen; scalar_t__ offset; int fh; scalar_t__ count; } ;
typedef int __be32 ;


 int NFS3_POST_OP_ATTR_WORDS ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,unsigned long long) ;
 int fh_copy (int *,int *) ;
 unsigned long min (scalar_t__,int ) ;
 int nfsd_read (struct svc_rqst*,int *,scalar_t__,int ,int ,int*,int *) ;
 int svc_max_payload (struct svc_rqst*) ;
 int svc_reserve_auth (struct svc_rqst*,int) ;

__attribute__((used)) static __be32
nfsd3_proc_read(struct svc_rqst *rqstp)
{
 struct nfsd3_readargs *argp = rqstp->rq_argp;
 struct nfsd3_readres *resp = rqstp->rq_resp;
 __be32 nfserr;
 u32 max_blocksize = svc_max_payload(rqstp);
 unsigned long cnt = min(argp->count, max_blocksize);

 dprintk("nfsd: READ(3) %s %lu bytes at %Lu\n",
    SVCFH_fmt(&argp->fh),
    (unsigned long) argp->count,
    (unsigned long long) argp->offset);





 resp->count = cnt;
 svc_reserve_auth(rqstp, ((1 + NFS3_POST_OP_ATTR_WORDS + 3)<<2) + resp->count +4);

 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_read(rqstp, &resp->fh,
      argp->offset,
         rqstp->rq_vec, argp->vlen,
      &resp->count,
      &resp->eof);
 RETURN_STATUS(nfserr);
}
