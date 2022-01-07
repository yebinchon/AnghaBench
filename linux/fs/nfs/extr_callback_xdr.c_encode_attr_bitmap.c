
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int cpu_to_be32 (int ) ;
 scalar_t__ xdr_stream_encode_uint32_array (struct xdr_stream*,int const*,size_t) ;

__attribute__((used)) static __be32 encode_attr_bitmap(struct xdr_stream *xdr, const uint32_t *bitmap, size_t sz)
{
 if (xdr_stream_encode_uint32_array(xdr, bitmap, sz) < 0)
  return cpu_to_be32(NFS4ERR_RESOURCE);
 return 0;
}
