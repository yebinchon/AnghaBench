
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {size_t len; TYPE_1__* head; } ;
struct TYPE_2__ {size_t iov_len; } ;



__attribute__((used)) static inline void rpcrdma_set_xdrlen(struct xdr_buf *xdr, size_t len)
{
 xdr->head[0].iov_len = len;
 xdr->len = len;
}
