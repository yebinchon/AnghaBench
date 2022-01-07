
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct qstr {int name; int len; } ;
struct compound_hdr {int dummy; } ;


 int OP_REMOVE ;
 int decode_remove_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_string (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static void encode_remove(struct xdr_stream *xdr, const struct qstr *name, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_REMOVE, decode_remove_maxsz, hdr);
 encode_string(xdr, name->len, name->name);
}
