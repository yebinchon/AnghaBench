
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_linkargs* rq_argp; } ;
struct nfsd_linkargs {int tlen; int tname; int tfh; int ffh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfssvc_decode_linkargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd_linkargs *args = rqstp->rq_argp;

 if (!(p = decode_fh(p, &args->ffh))
  || !(p = decode_fh(p, &args->tfh))
  || !(p = decode_filename(p, &args->tname, &args->tlen)))
  return 0;

 return xdr_argsize_check(rqstp, p);
}
