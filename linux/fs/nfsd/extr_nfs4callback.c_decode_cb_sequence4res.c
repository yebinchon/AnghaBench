
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfsd4_callback {scalar_t__ cb_seq_status; TYPE_1__* cb_clp; } ;
struct TYPE_2__ {scalar_t__ cl_minorversion; } ;


 int OP_CB_SEQUENCE ;
 int decode_cb_op_status (struct xdr_stream*,int ,scalar_t__*) ;
 int decode_cb_sequence4resok (struct xdr_stream*,struct nfsd4_callback*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_cb_sequence4res(struct xdr_stream *xdr,
      struct nfsd4_callback *cb)
{
 int status;

 if (cb->cb_clp->cl_minorversion == 0)
  return 0;

 status = decode_cb_op_status(xdr, OP_CB_SEQUENCE, &cb->cb_seq_status);
 if (unlikely(status || cb->cb_seq_status))
  return status;

 return decode_cb_sequence4resok(xdr, cb);
}
