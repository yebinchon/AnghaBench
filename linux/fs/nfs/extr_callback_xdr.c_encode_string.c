
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int cpu_to_be32 (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xdr_stream_encode_opaque (struct xdr_stream*,char const*,unsigned int) ;

__attribute__((used)) static __be32 encode_string(struct xdr_stream *xdr, unsigned int len, const char *str)
{
 if (unlikely(xdr_stream_encode_opaque(xdr, str, len) < 0))
  return cpu_to_be32(NFS4ERR_RESOURCE);
 return 0;
}
