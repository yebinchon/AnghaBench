
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_setclientid_res {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_setclientid (struct xdr_stream*,struct nfs4_setclientid_res*) ;

__attribute__((used)) static int nfs4_xdr_dec_setclientid(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        void *data)
{
 struct nfs4_setclientid_res *res = data;
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 if (!status)
  status = decode_setclientid(xdr, res);
 return status;
}
