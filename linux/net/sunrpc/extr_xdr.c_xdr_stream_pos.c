
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {scalar_t__ nwords; TYPE_1__* buf; } ;
struct TYPE_2__ {int len; } ;


 scalar_t__ XDR_QUADLEN (int ) ;

unsigned int xdr_stream_pos(const struct xdr_stream *xdr)
{
 return (unsigned int)(XDR_QUADLEN(xdr->buf->len) - xdr->nwords) << 2;
}
