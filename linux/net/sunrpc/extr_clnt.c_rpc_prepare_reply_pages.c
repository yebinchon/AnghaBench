
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_rqst {int rq_rcv_buf; TYPE_2__* rq_cred; } ;
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cr_auth; } ;
struct TYPE_3__ {int au_ralign; } ;


 int RPC_REPHDRSIZE ;
 int trace_rpc_reply_pages (struct rpc_rqst*) ;
 int xdr_inline_pages (int *,unsigned int,struct page**,unsigned int,unsigned int) ;

void rpc_prepare_reply_pages(struct rpc_rqst *req, struct page **pages,
        unsigned int base, unsigned int len,
        unsigned int hdrsize)
{



 hdrsize += RPC_REPHDRSIZE + req->rq_cred->cr_auth->au_ralign - 1;

 xdr_inline_pages(&req->rq_rcv_buf, hdrsize << 2, pages, base, len);
 trace_rpc_reply_pages(req);
}
