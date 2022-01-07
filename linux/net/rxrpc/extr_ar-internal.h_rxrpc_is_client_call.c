
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int dummy; } ;


 int rxrpc_is_service_call (struct rxrpc_call const*) ;

__attribute__((used)) static inline bool rxrpc_is_client_call(const struct rxrpc_call *call)
{
 return !rxrpc_is_service_call(call);
}
