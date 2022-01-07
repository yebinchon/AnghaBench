
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct qstr {int name; int len; } ;
struct compound_hdr {int dummy; } ;


 int OP_RENAME ;
 int decode_rename_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_string (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static void encode_rename(struct xdr_stream *xdr, const struct qstr *oldname, const struct qstr *newname, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_RENAME, decode_rename_maxsz, hdr);
 encode_string(xdr, oldname->len, oldname->name);
 encode_string(xdr, newname->len, newname->name);
}
