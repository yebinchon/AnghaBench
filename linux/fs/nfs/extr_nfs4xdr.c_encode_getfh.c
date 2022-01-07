
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int OP_GETFH ;
 int decode_getfh_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_getfh(struct xdr_stream *xdr, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_GETFH, decode_getfh_maxsz, hdr);
}
