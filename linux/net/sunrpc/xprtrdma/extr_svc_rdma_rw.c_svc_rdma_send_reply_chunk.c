
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {TYPE_1__* tail; scalar_t__ page_len; TYPE_1__* head; } ;
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_write_info {int wi_cc; } ;
typedef int __be32 ;
struct TYPE_2__ {int iov_len; } ;


 int ENOMEM ;
 int svc_rdma_post_chunk_ctxt (int *) ;
 int svc_rdma_send_xdr_kvec (struct svc_rdma_write_info*,TYPE_1__*) ;
 int svc_rdma_send_xdr_pagelist (struct svc_rdma_write_info*,struct xdr_buf*) ;
 struct svc_rdma_write_info* svc_rdma_write_info_alloc (struct svcxprt_rdma*,int *) ;
 int svc_rdma_write_info_free (struct svc_rdma_write_info*) ;
 int trace_svcrdma_encode_reply (int) ;

int svc_rdma_send_reply_chunk(struct svcxprt_rdma *rdma, __be32 *rp_ch,
         bool writelist, struct xdr_buf *xdr)
{
 struct svc_rdma_write_info *info;
 int consumed, ret;

 info = svc_rdma_write_info_alloc(rdma, rp_ch);
 if (!info)
  return -ENOMEM;

 ret = svc_rdma_send_xdr_kvec(info, &xdr->head[0]);
 if (ret < 0)
  goto out_err;
 consumed = xdr->head[0].iov_len;




 if (!writelist && xdr->page_len) {
  ret = svc_rdma_send_xdr_pagelist(info, xdr);
  if (ret < 0)
   goto out_err;
  consumed += xdr->page_len;
 }

 if (xdr->tail[0].iov_len) {
  ret = svc_rdma_send_xdr_kvec(info, &xdr->tail[0]);
  if (ret < 0)
   goto out_err;
  consumed += xdr->tail[0].iov_len;
 }

 ret = svc_rdma_post_chunk_ctxt(&info->wi_cc);
 if (ret < 0)
  goto out_err;

 trace_svcrdma_encode_reply(consumed);
 return consumed;

out_err:
 svc_rdma_write_info_free(info);
 return ret;
}
