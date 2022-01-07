
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;


 int encode_uint32 (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_op_hdr(struct xdr_stream *xdr, enum nfs_opnum4 op,
  uint32_t replen,
  struct compound_hdr *hdr)
{
 encode_uint32(xdr, op);
 hdr->nops++;
 hdr->replen += replen;
}
