
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {int call_id; int cid; int debug_id; } ;
typedef int rxrpc_seq_t ;


 int RXRPC_CALL_LOCALLY_ABORTED ;
 int __rxrpc_set_call_completion (struct rxrpc_call*,int ,int ,int) ;
 int trace_rxrpc_abort (int ,char const*,int ,int ,int ,int ,int) ;

__attribute__((used)) static inline bool __rxrpc_abort_call(const char *why, struct rxrpc_call *call,
          rxrpc_seq_t seq,
          u32 abort_code, int error)
{
 trace_rxrpc_abort(call->debug_id, why, call->cid, call->call_id, seq,
     abort_code, error);
 return __rxrpc_set_call_completion(call, RXRPC_CALL_LOCALLY_ABORTED,
        abort_code, error);
}
