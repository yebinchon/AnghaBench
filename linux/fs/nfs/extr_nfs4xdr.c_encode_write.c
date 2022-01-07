
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_pgio_args {int count; int pgbase; int pages; int stable; int offset; int stateid; } ;
struct compound_hdr {int dummy; } ;
typedef void* __be32 ;


 int OP_WRITE ;
 void* cpu_to_be32 (int ) ;
 int decode_write_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 void** reserve_space (struct xdr_stream*,int) ;
 void** xdr_encode_hyper (void**,int ) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void encode_write(struct xdr_stream *xdr, const struct nfs_pgio_args *args,
    struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_WRITE, decode_write_maxsz, hdr);
 encode_nfs4_stateid(xdr, &args->stateid);

 p = reserve_space(xdr, 16);
 p = xdr_encode_hyper(p, args->offset);
 *p++ = cpu_to_be32(args->stable);
 *p = cpu_to_be32(args->count);

 xdr_write_pages(xdr, args->pages, args->pgbase, args->count);
}
