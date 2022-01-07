
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {scalar_t__ len; } ;
typedef int rpc_fraghdr ;


 int RPC_LAST_STREAM_FRAGMENT ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static rpc_fraghdr
xs_stream_record_marker(struct xdr_buf *xdr)
{
 if (!xdr->len)
  return 0;
 return cpu_to_be32(RPC_LAST_STREAM_FRAGMENT | (u32)xdr->len);
}
