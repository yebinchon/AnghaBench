
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_diropargs* rq_argp; } ;
struct nfsd_diropargs {int fh; int len; int name; } ;
typedef int __be32 ;


 int SVCFH_fmt (int *) ;
 int S_IFDIR ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_put (int *) ;
 int nfsd_unlink (struct svc_rqst*,int *,int ,int ,int ) ;

__attribute__((used)) static __be32
nfsd_proc_remove(struct svc_rqst *rqstp)
{
 struct nfsd_diropargs *argp = rqstp->rq_argp;
 __be32 nfserr;

 dprintk("nfsd: REMOVE   %s %.*s\n", SVCFH_fmt(&argp->fh),
  argp->len, argp->name);


 nfserr = nfsd_unlink(rqstp, &argp->fh, -S_IFDIR, argp->name, argp->len);
 fh_put(&argp->fh);
 return nfserr;
}
