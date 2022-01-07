
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {TYPE_1__* buf; } ;
struct TYPE_2__ {int page_len; } ;


 int xdr_read_pages (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_dirlist3(struct xdr_stream *xdr)
{
 return xdr_read_pages(xdr, xdr->buf->page_len);
}
