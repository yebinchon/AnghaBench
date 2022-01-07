
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int OP_ACCESS ;
 int decode_access_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint32 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_access(struct xdr_stream *xdr, u32 access, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_ACCESS, decode_access_maxsz, hdr);
 encode_uint32(xdr, access);
}
