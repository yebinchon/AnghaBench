
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pages; } ;
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd3_diropres* rq_resp; struct nfsd3_symlinkargs* rq_argp; } ;
struct nfsd3_symlinkargs {scalar_t__ tlen; int tname; int flen; int fname; int ffh; int first; } ;
struct nfsd3_diropres {int fh; int dirfh; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (int ) ;
 int NFS3_FHSIZE ;
 scalar_t__ NFS3_MAXPATHLEN ;
 int PTR_ERR (int ) ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ,scalar_t__,int ) ;
 int fh_copy (int *,int *) ;
 int fh_init (int *,int ) ;
 int kfree (int ) ;
 int nfsd_symlink (struct svc_rqst*,int *,int ,int ,int ,int *) ;
 int nfserr_inval ;
 int nfserr_nametoolong ;
 int nfserrno (int ) ;
 int page_address (int ) ;
 int svc_fill_symlink_pathname (struct svc_rqst*,int *,int ,scalar_t__) ;

__attribute__((used)) static __be32
nfsd3_proc_symlink(struct svc_rqst *rqstp)
{
 struct nfsd3_symlinkargs *argp = rqstp->rq_argp;
 struct nfsd3_diropres *resp = rqstp->rq_resp;
 __be32 nfserr;

 if (argp->tlen == 0)
  RETURN_STATUS(nfserr_inval);
 if (argp->tlen > NFS3_MAXPATHLEN)
  RETURN_STATUS(nfserr_nametoolong);

 argp->tname = svc_fill_symlink_pathname(rqstp, &argp->first,
      page_address(rqstp->rq_arg.pages[0]),
      argp->tlen);
 if (IS_ERR(argp->tname))
  RETURN_STATUS(nfserrno(PTR_ERR(argp->tname)));

 dprintk("nfsd: SYMLINK(3)  %s %.*s -> %.*s\n",
    SVCFH_fmt(&argp->ffh),
    argp->flen, argp->fname,
    argp->tlen, argp->tname);

 fh_copy(&resp->dirfh, &argp->ffh);
 fh_init(&resp->fh, NFS3_FHSIZE);
 nfserr = nfsd_symlink(rqstp, &resp->dirfh, argp->fname, argp->flen,
         argp->tname, &resp->fh);
 kfree(argp->tname);
 RETURN_STATUS(nfserr);
}
