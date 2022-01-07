
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_statfsres* rq_resp; struct nfsd_fhandle* rq_argp; } ;
struct nfsd_statfsres {int stats; } ;
struct nfsd_fhandle {int fh; } ;
typedef int __be32 ;


 int NFSD_MAY_BYPASS_GSS_ON_ROOT ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_put (int *) ;
 int nfsd_statfs (struct svc_rqst*,int *,int *,int ) ;

__attribute__((used)) static __be32
nfsd_proc_statfs(struct svc_rqst *rqstp)
{
 struct nfsd_fhandle *argp = rqstp->rq_argp;
 struct nfsd_statfsres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: STATFS   %s\n", SVCFH_fmt(&argp->fh));

 nfserr = nfsd_statfs(rqstp, &argp->fh, &resp->stats,
   NFSD_MAY_BYPASS_GSS_ON_ROOT);
 fh_put(&argp->fh);
 return nfserr;
}
