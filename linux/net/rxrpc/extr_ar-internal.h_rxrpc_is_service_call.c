
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int flags; } ;


 int RXRPC_CALL_IS_SERVICE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool rxrpc_is_service_call(const struct rxrpc_call *call)
{
 return test_bit(RXRPC_CALL_IS_SERVICE, &call->flags);
}
