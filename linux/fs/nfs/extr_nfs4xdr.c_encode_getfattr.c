
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int encode_getattr (struct xdr_stream*,int ,int const*,int ,struct compound_hdr*) ;
 int nfs4_fattr_bitmap ;

__attribute__((used)) static void encode_getfattr(struct xdr_stream *xdr, const u32* bitmask, struct compound_hdr *hdr)
{
 encode_getattr(xdr, nfs4_fattr_bitmap, bitmask,
   ARRAY_SIZE(nfs4_fattr_bitmap), hdr);
}
