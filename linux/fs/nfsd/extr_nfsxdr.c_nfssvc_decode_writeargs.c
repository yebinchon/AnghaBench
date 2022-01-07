
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int page_len; struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd_writeargs* rq_argp; } ;
struct TYPE_4__ {unsigned int iov_len; void* iov_base; } ;
struct nfsd_writeargs {unsigned int len; TYPE_2__ first; void* offset; int fh; } ;
struct kvec {void* iov_base; unsigned int iov_len; } ;
typedef int __be32 ;


 unsigned int NFSSVC_MAXBLKSIZE_V2 ;
 int XDR_QUADLEN (unsigned int) ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;

int
nfssvc_decode_writeargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd_writeargs *args = rqstp->rq_argp;
 unsigned int len, hdr, dlen;
 struct kvec *head = rqstp->rq_arg.head;

 p = decode_fh(p, &args->fh);
 if (!p)
  return 0;

 p++;
 args->offset = ntohl(*p++);
 p++;
 len = args->len = ntohl(*p++);



 if (len > NFSSVC_MAXBLKSIZE_V2)
  return 0;





 hdr = (void*)p - head->iov_base;
 if (hdr > head->iov_len)
  return 0;
 dlen = head->iov_len + rqstp->rq_arg.page_len - hdr;
 if (dlen < XDR_QUADLEN(len)*4)
  return 0;

 args->first.iov_base = (void *)p;
 args->first.iov_len = head->iov_len - hdr;
 return 1;
}
