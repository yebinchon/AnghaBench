
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {unsigned int page_len; struct kvec* tail; struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd3_writeargs* rq_argp; } ;
struct TYPE_4__ {unsigned int iov_len; void* iov_base; } ;
struct nfsd3_writeargs {void* count; unsigned int len; TYPE_2__ first; void* stable; int offset; int fh; } ;
struct kvec {void* iov_base; int iov_len; } ;
typedef int __be32 ;


 int XDR_QUADLEN (unsigned int) ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 void* svc_max_payload (struct svc_rqst*) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_writeargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_writeargs *args = rqstp->rq_argp;
 unsigned int len, hdr, dlen;
 u32 max_blocksize = svc_max_payload(rqstp);
 struct kvec *head = rqstp->rq_arg.head;
 struct kvec *tail = rqstp->rq_arg.tail;

 p = decode_fh(p, &args->fh);
 if (!p)
  return 0;
 p = xdr_decode_hyper(p, &args->offset);

 args->count = ntohl(*p++);
 args->stable = ntohl(*p++);
 len = args->len = ntohl(*p++);
 if ((void *)p > head->iov_base + head->iov_len)
  return 0;



 if (args->count != args->len)
  return 0;





 hdr = (void*)p - head->iov_base;
 dlen = head->iov_len + rqstp->rq_arg.page_len + tail->iov_len - hdr;
 if (dlen < XDR_QUADLEN(len)*4)
  return 0;

 if (args->count > max_blocksize) {
  args->count = max_blocksize;
  len = args->len = max_blocksize;
 }

 args->first.iov_base = (void *)p;
 args->first.iov_len = head->iov_len - hdr;
 return 1;
}
