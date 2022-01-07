
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages; } ;
struct svc_rqst {int rq_vec; TYPE_1__ rq_arg; struct nfsd_attrstat* rq_resp; struct nfsd_writeargs* rq_argp; } ;
struct nfsd_writeargs {unsigned long len; int offset; int fh; int first; } ;
struct nfsd_attrstat {int fh; } ;
typedef int __be32 ;


 int NFS_DATA_SYNC ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,int ) ;
 int fh_copy (int *,int *) ;
 int nfsd_return_attrs (int ,struct nfsd_attrstat*) ;
 int nfsd_write (struct svc_rqst*,int ,int ,int ,unsigned int,unsigned long*,int ) ;
 int nfserr_io ;
 unsigned int svc_fill_write_vector (struct svc_rqst*,int ,int *,unsigned long) ;

__attribute__((used)) static __be32
nfsd_proc_write(struct svc_rqst *rqstp)
{
 struct nfsd_writeargs *argp = rqstp->rq_argp;
 struct nfsd_attrstat *resp = rqstp->rq_resp;
 __be32 nfserr;
 unsigned long cnt = argp->len;
 unsigned int nvecs;

 dprintk("nfsd: WRITE    %s %d bytes at %d\n",
  SVCFH_fmt(&argp->fh),
  argp->len, argp->offset);

 nvecs = svc_fill_write_vector(rqstp, rqstp->rq_arg.pages,
          &argp->first, cnt);
 if (!nvecs)
  return nfserr_io;
 nfserr = nfsd_write(rqstp, fh_copy(&resp->fh, &argp->fh),
       argp->offset, rqstp->rq_vec, nvecs,
       &cnt, NFS_DATA_SYNC);
 return nfsd_return_attrs(nfserr, resp);
}
