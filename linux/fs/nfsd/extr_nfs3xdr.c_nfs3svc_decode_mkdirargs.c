
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_createargs* rq_argp; } ;
struct nfsd3_createargs {int attrs; int len; int name; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int * decode_sattr3 (int *,int *,int ) ;
 int nfsd_user_namespace (struct svc_rqst*) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_mkdirargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_createargs *args = rqstp->rq_argp;

 if (!(p = decode_fh(p, &args->fh)) ||
     !(p = decode_filename(p, &args->name, &args->len)))
  return 0;
 p = decode_sattr3(p, &args->attrs, nfsd_user_namespace(rqstp));

 return xdr_argsize_check(rqstp, p);
}
