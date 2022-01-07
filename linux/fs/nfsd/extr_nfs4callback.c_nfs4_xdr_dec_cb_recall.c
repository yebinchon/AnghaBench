
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfsd4_callback {int cb_status; scalar_t__ cb_seq_status; } ;
struct nfs4_cb_compound_hdr {int dummy; } ;


 int OP_CB_RECALL ;
 int decode_cb_compound4res (struct xdr_stream*,struct nfs4_cb_compound_hdr*) ;
 int decode_cb_op_status (struct xdr_stream*,int ,int *) ;
 int decode_cb_sequence4res (struct xdr_stream*,struct nfsd4_callback*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfs4_xdr_dec_cb_recall(struct rpc_rqst *rqstp,
      struct xdr_stream *xdr,
      void *data)
{
 struct nfsd4_callback *cb = data;
 struct nfs4_cb_compound_hdr hdr;
 int status;

 status = decode_cb_compound4res(xdr, &hdr);
 if (unlikely(status))
  return status;

 status = decode_cb_sequence4res(xdr, cb);
 if (unlikely(status || cb->cb_seq_status))
  return status;

 return decode_cb_op_status(xdr, OP_CB_RECALL, &cb->cb_status);
}
