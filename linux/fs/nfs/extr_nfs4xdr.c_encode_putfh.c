
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int data; int size; } ;
struct compound_hdr {int dummy; } ;


 int OP_PUTFH ;
 int decode_putfh_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_string (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static void
encode_putfh(struct xdr_stream *xdr, const struct nfs_fh *fh, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_PUTFH, decode_putfh_maxsz, hdr);
 encode_string(xdr, fh->size, fh->data);
}
