
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t iov_len; void* iov_base; } ;
struct xdr_stream {TYPE_1__ scratch; } ;



void xdr_set_scratch_buffer(struct xdr_stream *xdr, void *buf, size_t buflen)
{
 xdr->scratch.iov_base = buf;
 xdr->scratch.iov_len = buflen;
}
