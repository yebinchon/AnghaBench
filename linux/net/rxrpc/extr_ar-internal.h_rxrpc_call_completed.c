
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int state_lock; } ;


 int __rxrpc_call_completed (struct rxrpc_call*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline bool rxrpc_call_completed(struct rxrpc_call *call)
{
 bool ret;

 write_lock_bh(&call->state_lock);
 ret = __rxrpc_call_completed(call);
 write_unlock_bh(&call->state_lock);
 return ret;
}
