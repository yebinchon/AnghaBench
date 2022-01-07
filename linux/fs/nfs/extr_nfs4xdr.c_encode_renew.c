
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int clientid4 ;


 int OP_RENEW ;
 int decode_renew_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_renew(struct xdr_stream *xdr, clientid4 clid,
    struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_RENEW, decode_renew_maxsz, hdr);
 encode_uint64(xdr, clid);
}
