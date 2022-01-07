
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {scalar_t__ page_len; TYPE_1__* head; } ;
struct TYPE_2__ {int iov_len; } ;



__attribute__((used)) static void
fix_priv_head(struct xdr_buf *buf, int pad)
{
 if (buf->page_len == 0) {



  buf->head[0].iov_len -= pad;
 }
}
