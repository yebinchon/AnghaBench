
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* iov_base; size_t iov_len; } ;
struct xdr_stream {TYPE_1__ scratch; scalar_t__ p; scalar_t__ end; } ;
typedef char __be32 ;


 char* __xdr_inline_decode (struct xdr_stream*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int trace_rpc_xdr_overflow (struct xdr_stream*,size_t) ;
 int xdr_set_next_buffer (struct xdr_stream*) ;

__attribute__((used)) static __be32 *xdr_copy_to_scratch(struct xdr_stream *xdr, size_t nbytes)
{
 __be32 *p;
 char *cpdest = xdr->scratch.iov_base;
 size_t cplen = (char *)xdr->end - (char *)xdr->p;

 if (nbytes > xdr->scratch.iov_len)
  goto out_overflow;
 p = __xdr_inline_decode(xdr, cplen);
 if (p == ((void*)0))
  return ((void*)0);
 memcpy(cpdest, p, cplen);
 if (!xdr_set_next_buffer(xdr))
  goto out_overflow;
 cpdest += cplen;
 nbytes -= cplen;
 p = __xdr_inline_decode(xdr, nbytes);
 if (p == ((void*)0))
  return ((void*)0);
 memcpy(cpdest, p, nbytes);
 return xdr->scratch.iov_base;
out_overflow:
 trace_rpc_xdr_overflow(xdr, nbytes);
 return ((void*)0);
}
