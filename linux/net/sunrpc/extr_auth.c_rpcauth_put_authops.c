
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_authops {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void
rpcauth_put_authops(const struct rpc_authops *ops)
{
 module_put(ops->owner);
}
