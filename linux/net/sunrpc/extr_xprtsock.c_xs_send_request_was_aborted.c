
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct sock_xprt {TYPE_1__ xmit; } ;
struct rpc_rqst {scalar_t__ rq_bytes_sent; } ;



__attribute__((used)) static bool
xs_send_request_was_aborted(struct sock_xprt *transport, struct rpc_rqst *req)
{
 return transport->xmit.offset != 0 && req->rq_bytes_sent == 0;
}
