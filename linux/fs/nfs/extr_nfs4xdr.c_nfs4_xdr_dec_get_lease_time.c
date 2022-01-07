
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_get_lease_time_res {int lr_fsinfo; int lr_seq_res; } ;
struct compound_hdr {int dummy; } ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_fsinfo (struct xdr_stream*,int ) ;
 int decode_putrootfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;

__attribute__((used)) static int nfs4_xdr_dec_get_lease_time(struct rpc_rqst *rqstp,
           struct xdr_stream *xdr,
           void *data)
{
 struct nfs4_get_lease_time_res *res = data;
 struct compound_hdr hdr;
 int status;

 status = decode_compound_hdr(xdr, &hdr);
 if (!status)
  status = decode_sequence(xdr, &res->lr_seq_res, rqstp);
 if (!status)
  status = decode_putrootfh(xdr);
 if (!status)
  status = decode_fsinfo(xdr, res->lr_fsinfo);
 return status;
}
