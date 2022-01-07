
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_secinfo_res {int dummy; } ;


 int OP_SECINFO ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_secinfo_common (struct xdr_stream*,struct nfs4_secinfo_res*) ;

__attribute__((used)) static int decode_secinfo(struct xdr_stream *xdr, struct nfs4_secinfo_res *res)
{
 int status = decode_op_hdr(xdr, OP_SECINFO);
 if (status)
  return status;
 return decode_secinfo_common(xdr, res);
}
