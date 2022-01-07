
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef unsigned int ssize_t ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int cpu_to_be32 (int ) ;
 unsigned int xdr_stream_decode_opaque_inline (struct xdr_stream*,void**,size_t) ;

__attribute__((used)) static __be32 decode_string(struct xdr_stream *xdr, unsigned int *len,
  const char **str, size_t maxlen)
{
 ssize_t err;

 err = xdr_stream_decode_opaque_inline(xdr, (void **)str, maxlen);
 if (err < 0)
  return cpu_to_be32(NFS4ERR_RESOURCE);
 *len = err;
 return 0;
}
