
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_attrstat* rq_resp; struct nfsd3_diropargs* rq_argp; } ;
struct nfsd3_diropargs {int len; int name; int fh; } ;
struct nfsd3_attrstat {int fh; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int S_IFDIR ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int fh_unlock (int *) ;
 int nfsd_unlink (struct svc_rqst*,int *,int ,int ,int ) ;

__attribute__((used)) static __be32
nfsd3_proc_remove(struct svc_rqst *rqstp)
{
 struct nfsd3_diropargs *argp = rqstp->rq_argp;
 struct nfsd3_attrstat *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: REMOVE(3)   %s %.*s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    argp->name);


 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_unlink(rqstp, &resp->fh, -S_IFDIR, argp->name, argp->len);
 fh_unlock(&resp->fh);
 RETURN_STATUS(nfserr);
}
