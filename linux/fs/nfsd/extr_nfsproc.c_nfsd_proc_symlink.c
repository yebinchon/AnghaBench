
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pages; } ;
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd_symlinkargs* rq_argp; } ;
struct svc_fh {int dummy; } ;
struct nfsd_symlinkargs {scalar_t__ tlen; struct svc_fh ffh; int tname; int flen; int fname; int first; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (int ) ;
 int NFS_FHSIZE ;
 scalar_t__ NFS_MAXPATHLEN ;
 int PTR_ERR (int ) ;
 int SVCFH_fmt (struct svc_fh*) ;
 int dprintk (char*,int ,int ,int ,scalar_t__,int ) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 int kfree (int ) ;
 int nfsd_symlink (struct svc_rqst*,struct svc_fh*,int ,int ,int ,struct svc_fh*) ;
 int nfserr_nametoolong ;
 int nfserrno (int ) ;
 int page_address (int ) ;
 int svc_fill_symlink_pathname (struct svc_rqst*,int *,int ,scalar_t__) ;

__attribute__((used)) static __be32
nfsd_proc_symlink(struct svc_rqst *rqstp)
{
 struct nfsd_symlinkargs *argp = rqstp->rq_argp;
 struct svc_fh newfh;
 __be32 nfserr;

 if (argp->tlen > NFS_MAXPATHLEN)
  return nfserr_nametoolong;

 argp->tname = svc_fill_symlink_pathname(rqstp, &argp->first,
      page_address(rqstp->rq_arg.pages[0]),
      argp->tlen);
 if (IS_ERR(argp->tname))
  return nfserrno(PTR_ERR(argp->tname));

 dprintk("nfsd: SYMLINK  %s %.*s -> %.*s\n",
  SVCFH_fmt(&argp->ffh), argp->flen, argp->fname,
  argp->tlen, argp->tname);

 fh_init(&newfh, NFS_FHSIZE);
 nfserr = nfsd_symlink(rqstp, &argp->ffh, argp->fname, argp->flen,
       argp->tname, &newfh);

 kfree(argp->tname);
 fh_put(&argp->ffh);
 fh_put(&newfh);
 return nfserr;
}
