
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int encode_getattr (struct xdr_stream*,int const*,int const*,int,struct compound_hdr*) ;

__attribute__((used)) static void encode_getfattr_open(struct xdr_stream *xdr, const u32 *bitmask,
     const u32 *open_bitmap,
     struct compound_hdr *hdr)
{
 encode_getattr(xdr, open_bitmap, bitmask, 3, hdr);
}
