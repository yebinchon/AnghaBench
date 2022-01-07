
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {size_t page_len; TYPE_3__* tail; TYPE_1__* head; } ;
struct svc_rqst {TYPE_4__ rq_arg; struct nfsd3_symlinkargs* rq_argp; } ;
struct TYPE_6__ {int iov_len; int * iov_base; } ;
struct nfsd3_symlinkargs {int tlen; TYPE_2__ first; int attrs; int flen; int fname; int ffh; } ;
typedef int __be32 ;
struct TYPE_7__ {size_t iov_len; } ;
struct TYPE_5__ {int iov_len; } ;


 size_t XDR_QUADLEN (int ) ;
 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int * decode_sattr3 (int *,int *,int ) ;
 int nfsd_user_namespace (struct svc_rqst*) ;
 int ntohl (int ) ;

int
nfs3svc_decode_symlinkargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_symlinkargs *args = rqstp->rq_argp;
 char *base = (char *)p;
 size_t dlen;

 if (!(p = decode_fh(p, &args->ffh)) ||
     !(p = decode_filename(p, &args->fname, &args->flen)))
  return 0;
 p = decode_sattr3(p, &args->attrs, nfsd_user_namespace(rqstp));

 args->tlen = ntohl(*p++);

 args->first.iov_base = p;
 args->first.iov_len = rqstp->rq_arg.head[0].iov_len;
 args->first.iov_len -= (char *)p - base;

 dlen = args->first.iov_len + rqstp->rq_arg.page_len +
        rqstp->rq_arg.tail[0].iov_len;
 if (dlen < XDR_QUADLEN(args->tlen) << 2)
  return 0;
 return 1;
}
