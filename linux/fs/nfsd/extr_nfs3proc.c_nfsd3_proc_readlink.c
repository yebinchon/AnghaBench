
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_readlinkres* rq_resp; struct nfsd3_readlinkargs* rq_argp; } ;
struct nfsd3_readlinkres {int len; int fh; } ;
struct nfsd3_readlinkargs {int buffer; int fh; } ;
typedef int __be32 ;


 int NFS3_MAXPATHLEN ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_copy (int *,int *) ;
 int nfsd_readlink (struct svc_rqst*,int *,int ,int *) ;

__attribute__((used)) static __be32
nfsd3_proc_readlink(struct svc_rqst *rqstp)
{
 struct nfsd3_readlinkargs *argp = rqstp->rq_argp;
 struct nfsd3_readlinkres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: READLINK(3) %s\n", SVCFH_fmt(&argp->fh));


 fh_copy(&resp->fh, &argp->fh);
 resp->len = NFS3_MAXPATHLEN;
 nfserr = nfsd_readlink(rqstp, &resp->fh, argp->buffer, &resp->len);
 RETURN_STATUS(nfserr);
}
