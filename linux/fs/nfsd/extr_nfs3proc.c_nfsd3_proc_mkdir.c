
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {struct nfsd3_diropres* rq_resp; struct nfsd3_createargs* rq_argp; } ;
struct nfsd3_diropres {int dirfh; int fh; } ;
struct TYPE_2__ {int ia_valid; } ;
struct nfsd3_createargs {TYPE_1__ attrs; int len; int name; int fh; } ;
typedef int __be32 ;


 int ATTR_SIZE ;
 int NFS3_FHSIZE ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int S_IFDIR ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int fh_init (int *,int ) ;
 int fh_unlock (int *) ;
 int nfsd_create (struct svc_rqst*,int *,int ,int ,TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd3_proc_mkdir(struct svc_rqst *rqstp)
{
 struct nfsd3_createargs *argp = rqstp->rq_argp;
 struct nfsd3_diropres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: MKDIR(3)    %s %.*s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    argp->name);

 argp->attrs.ia_valid &= ~ATTR_SIZE;
 fh_copy(&resp->dirfh, &argp->fh);
 fh_init(&resp->fh, NFS3_FHSIZE);
 nfserr = nfsd_create(rqstp, &resp->dirfh, argp->name, argp->len,
        &argp->attrs, S_IFDIR, 0, &resp->fh);
 fh_unlock(&resp->dirfh);
 RETURN_STATUS(nfserr);
}
