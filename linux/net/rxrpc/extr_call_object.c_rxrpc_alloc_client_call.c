
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_rxrpc {int srx_service; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {int tx_phase; void* cong_tstamp; void* acks_latest_ts; int service_id; int state; } ;
typedef void* ktime_t ;
typedef int gfp_t ;


 int ENOMEM ;
 struct rxrpc_call* ERR_PTR (int ) ;
 int RXRPC_CALL_CLIENT_AWAIT_CONN ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_call*) ;
 void* ktime_get_real () ;
 struct rxrpc_call* rxrpc_alloc_call (struct rxrpc_sock*,int ,unsigned int) ;

__attribute__((used)) static struct rxrpc_call *rxrpc_alloc_client_call(struct rxrpc_sock *rx,
        struct sockaddr_rxrpc *srx,
        gfp_t gfp,
        unsigned int debug_id)
{
 struct rxrpc_call *call;
 ktime_t now;

 _enter("");

 call = rxrpc_alloc_call(rx, gfp, debug_id);
 if (!call)
  return ERR_PTR(-ENOMEM);
 call->state = RXRPC_CALL_CLIENT_AWAIT_CONN;
 call->service_id = srx->srx_service;
 call->tx_phase = 1;
 now = ktime_get_real();
 call->acks_latest_ts = now;
 call->cong_tstamp = now;

 _leave(" = %p", call);
 return call;
}
