
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fraghdr; } ;
struct sock_xprt {TYPE_1__ recv; } ;


 int RPC_LAST_STREAM_FRAGMENT ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static bool
xs_read_stream_request_done(struct sock_xprt *transport)
{
 return transport->recv.fraghdr & cpu_to_be32(RPC_LAST_STREAM_FRAGMENT);
}
