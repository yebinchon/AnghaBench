
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct compound_hdr {scalar_t__ replen; scalar_t__ taglen; int nops; void** nops_p; int minorversion; int tag; } ;
typedef void* __be32 ;


 scalar_t__ NFS4_MAXTAGLEN ;
 int WARN_ON_ONCE (int) ;
 void* cpu_to_be32 (int ) ;
 int encode_string (struct xdr_stream*,scalar_t__,int ) ;
 void** reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_compound_hdr(struct xdr_stream *xdr,
    struct rpc_rqst *req,
    struct compound_hdr *hdr)
{
 __be32 *p;




 hdr->replen = 3 + hdr->taglen;

 WARN_ON_ONCE(hdr->taglen > NFS4_MAXTAGLEN);
 encode_string(xdr, hdr->taglen, hdr->tag);
 p = reserve_space(xdr, 8);
 *p++ = cpu_to_be32(hdr->minorversion);
 hdr->nops_p = p;
 *p = cpu_to_be32(hdr->nops);
}
