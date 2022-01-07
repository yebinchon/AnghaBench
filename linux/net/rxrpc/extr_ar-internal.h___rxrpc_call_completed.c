
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int dummy; } ;


 int RXRPC_CALL_SUCCEEDED ;
 int __rxrpc_set_call_completion (struct rxrpc_call*,int ,int ,int ) ;

__attribute__((used)) static inline bool __rxrpc_call_completed(struct rxrpc_call *call)
{
 return __rxrpc_set_call_completion(call, RXRPC_CALL_SUCCEEDED, 0, 0);
}
