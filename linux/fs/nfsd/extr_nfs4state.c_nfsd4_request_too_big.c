
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {scalar_t__ len; } ;
struct svc_rqst {struct xdr_buf rq_arg; } ;
struct TYPE_2__ {scalar_t__ maxreq_sz; } ;
struct nfsd4_session {TYPE_1__ se_fchannel; } ;



__attribute__((used)) static bool nfsd4_request_too_big(struct svc_rqst *rqstp,
      struct nfsd4_session *session)
{
 struct xdr_buf *xb = &rqstp->rq_arg;

 return xb->len > session->se_fchannel.maxreq_sz;
}
