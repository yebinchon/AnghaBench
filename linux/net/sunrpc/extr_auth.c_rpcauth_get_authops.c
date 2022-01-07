
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_authops {int owner; } ;
typedef size_t rpc_authflavor_t ;


 size_t RPC_AUTH_MAXFLAVOR ;
 int * auth_flavors ;
 struct rpc_authops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,size_t) ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct rpc_authops *
rpcauth_get_authops(rpc_authflavor_t flavor)
{
 const struct rpc_authops *ops;

 if (flavor >= RPC_AUTH_MAXFLAVOR)
  return ((void*)0);

 rcu_read_lock();
 ops = rcu_dereference(auth_flavors[flavor]);
 if (ops == ((void*)0)) {
  rcu_read_unlock();
  request_module("rpc-auth-%u", flavor);
  rcu_read_lock();
  ops = rcu_dereference(auth_flavors[flavor]);
  if (ops == ((void*)0))
   goto out;
 }
 if (!try_module_get(ops->owner))
  ops = ((void*)0);
out:
 rcu_read_unlock();
 return ops;
}
