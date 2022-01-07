
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int page_len; TYPE_1__* tail; } ;
struct svc_rqst {TYPE_2__ rq_res; struct nfsd_readres* rq_resp; } ;
struct nfsd_readres {int count; int stat; int fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {int iov_len; scalar_t__* iov_base; } ;


 scalar_t__* encode_fattr (struct svc_rqst*,scalar_t__*,int *,int *) ;
 int htonl (int) ;
 int xdr_ressize_check (struct svc_rqst*,scalar_t__*) ;

int
nfssvc_encode_readres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd_readres *resp = rqstp->rq_resp;

 p = encode_fattr(rqstp, p, &resp->fh, &resp->stat);
 *p++ = htonl(resp->count);
 xdr_ressize_check(rqstp, p);


 rqstp->rq_res.page_len = resp->count;
 if (resp->count & 3) {

  rqstp->rq_res.tail[0].iov_base = p;
  *p = 0;
  rqstp->rq_res.tail[0].iov_len = 4 - (resp->count&3);
 }
 return 1;
}
