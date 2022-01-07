
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int __u32 ;


 size_t ARRAY_SIZE (int *) ;
 int OP_GETATTR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int decode_getattr_maxsz ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 size_t mask_bitmap4 (int const*,int const*,int *,size_t) ;
 int nfs4_fattr_bitmap_maxsz ;
 int xdr_encode_bitmap4 (struct xdr_stream*,int const*,size_t) ;

__attribute__((used)) static void encode_getattr(struct xdr_stream *xdr,
  const __u32 *bitmap, const __u32 *mask, size_t len,
  struct compound_hdr *hdr)
{
 __u32 masked_bitmap[nfs4_fattr_bitmap_maxsz];

 encode_op_hdr(xdr, OP_GETATTR, decode_getattr_maxsz, hdr);
 if (mask) {
  if (WARN_ON_ONCE(len > ARRAY_SIZE(masked_bitmap)))
   len = ARRAY_SIZE(masked_bitmap);
  len = mask_bitmap4(bitmap, mask, masked_bitmap, len);
  bitmap = masked_bitmap;
 }
 xdr_encode_bitmap4(xdr, bitmap, len);
}
