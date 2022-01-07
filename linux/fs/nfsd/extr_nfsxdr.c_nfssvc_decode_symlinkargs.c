
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ page_len; TYPE_2__* tail; TYPE_1__* head; } ;
struct svc_rqst {TYPE_3__ rq_arg; struct nfsd_symlinkargs* rq_argp; } ;
struct TYPE_8__ {int iov_len; int * iov_base; } ;
struct nfsd_symlinkargs {scalar_t__ tlen; int attrs; TYPE_4__ first; int flen; int fname; int ffh; } ;
typedef int __be32 ;
struct TYPE_6__ {int * iov_base; } ;
struct TYPE_5__ {int iov_len; } ;


 size_t XDR_QUADLEN (scalar_t__) ;
 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int decode_sattr (int *,int *,int ) ;
 int nfsd_user_namespace (struct svc_rqst*) ;
 scalar_t__ ntohl (int ) ;

int
nfssvc_decode_symlinkargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd_symlinkargs *args = rqstp->rq_argp;
 char *base = (char *)p;
 size_t xdrlen;

 if ( !(p = decode_fh(p, &args->ffh))
     || !(p = decode_filename(p, &args->fname, &args->flen)))
  return 0;

 args->tlen = ntohl(*p++);
 if (args->tlen == 0)
  return 0;

 args->first.iov_base = p;
 args->first.iov_len = rqstp->rq_arg.head[0].iov_len;
 args->first.iov_len -= (char *)p - base;






 if (rqstp->rq_arg.page_len) {
  if (args->tlen != rqstp->rq_arg.page_len)
   return 0;
  p = rqstp->rq_arg.tail[0].iov_base;
 } else {
  xdrlen = XDR_QUADLEN(args->tlen);
  if (xdrlen > args->first.iov_len - (8 * sizeof(__be32)))
   return 0;
  p += xdrlen;
 }
 decode_sattr(p, &args->attrs, nfsd_user_namespace(rqstp));

 return 1;
}
