
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_layout_error {int * errors; int stateid; int length; int offset; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int OP_LAYOUTERROR ;
 int cpu_to_be32 (int) ;
 int decode_layouterror_maxsz ;
 int encode_device_error (struct xdr_stream*,int *) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_layouterror(struct xdr_stream *xdr,
          const struct nfs42_layout_error *args,
          struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_LAYOUTERROR, decode_layouterror_maxsz, hdr);
 p = reserve_space(xdr, 8 + 8);
 p = xdr_encode_hyper(p, args->offset);
 p = xdr_encode_hyper(p, args->length);
 encode_nfs4_stateid(xdr, &args->stateid);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(1);
 encode_device_error(xdr, &args->errors[0]);
}
