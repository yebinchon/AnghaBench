
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {int state_lock; } ;
typedef int rxrpc_seq_t ;


 int __rxrpc_abort_call (char const*,struct rxrpc_call*,int ,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline bool rxrpc_abort_call(const char *why, struct rxrpc_call *call,
        rxrpc_seq_t seq, u32 abort_code, int error)
{
 bool ret;

 write_lock_bh(&call->state_lock);
 ret = __rxrpc_abort_call(why, call, seq, abort_code, error);
 write_unlock_bh(&call->state_lock);
 return ret;
}
