
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_renameargs* rq_argp; } ;
struct nfsd_renameargs {int tfh; int ffh; int tlen; int tname; int flen; int fname; } ;
typedef int __be32 ;


 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_put (int *) ;
 int nfsd_rename (struct svc_rqst*,int *,int ,int ,int *,int ,int ) ;

__attribute__((used)) static __be32
nfsd_proc_rename(struct svc_rqst *rqstp)
{
 struct nfsd_renameargs *argp = rqstp->rq_argp;
 __be32 nfserr;

 dprintk("nfsd: RENAME   %s %.*s -> \n",
  SVCFH_fmt(&argp->ffh), argp->flen, argp->fname);
 dprintk("nfsd:        ->  %s %.*s\n",
  SVCFH_fmt(&argp->tfh), argp->tlen, argp->tname);

 nfserr = nfsd_rename(rqstp, &argp->ffh, argp->fname, argp->flen,
        &argp->tfh, argp->tname, argp->tlen);
 fh_put(&argp->ffh);
 fh_put(&argp->tfh);
 return nfserr;
}
