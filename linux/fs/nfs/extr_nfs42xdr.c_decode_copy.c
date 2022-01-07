
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_copy_res {int write_res; } ;


 int NFS4ERR_OFFLOAD_NO_REQS ;
 int OP_COPY ;
 int decode_copy_requirements (struct xdr_stream*,struct nfs42_copy_res*) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_write_response (struct xdr_stream*,int *) ;

__attribute__((used)) static int decode_copy(struct xdr_stream *xdr, struct nfs42_copy_res *res)
{
 int status;

 status = decode_op_hdr(xdr, OP_COPY);
 if (status == NFS4ERR_OFFLOAD_NO_REQS) {
  status = decode_copy_requirements(xdr, res);
  if (status)
   return status;
  return NFS4ERR_OFFLOAD_NO_REQS;
 } else if (status)
  return status;

 status = decode_write_response(xdr, &res->write_res);
 if (status)
  return status;

 return decode_copy_requirements(xdr, res);
}
