
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ gssx_buffer ;
typedef int __be32 ;


 int ENOSPC ;
 int xdr_encode_opaque (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static int gssx_enc_buffer(struct xdr_stream *xdr,
      const gssx_buffer *buf)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, sizeof(u32) + buf->len);
 if (!p)
  return -ENOSPC;
 xdr_encode_opaque(p, buf->data, buf->len);
 return 0;
}
