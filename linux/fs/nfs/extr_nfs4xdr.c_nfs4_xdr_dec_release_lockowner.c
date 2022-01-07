
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_release_lockowner (struct xdr_stream*) ;

__attribute__((used)) static int nfs4_xdr_dec_release_lockowner(struct rpc_rqst *rqstp,
       struct xdr_stream *xdr, void *dummy)
{
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 if (!status)
  status = decode_release_lockowner(xdr);
 return status;
}
