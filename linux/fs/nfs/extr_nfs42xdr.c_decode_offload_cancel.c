
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_offload_status_res {int dummy; } ;


 int OP_OFFLOAD_CANCEL ;
 int decode_op_hdr (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_offload_cancel(struct xdr_stream *xdr,
     struct nfs42_offload_status_res *res)
{
 return decode_op_hdr(xdr, OP_OFFLOAD_CANCEL);
}
