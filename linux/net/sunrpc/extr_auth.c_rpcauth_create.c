
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpc_clnt {struct rpc_auth* cl_auth; } ;
struct rpc_authops {struct rpc_auth* (* create ) (struct rpc_auth_create_args const*,struct rpc_clnt*) ;} ;
struct rpc_auth_create_args {int pseudoflavor; } ;
struct rpc_auth {int dummy; } ;


 int EINVAL ;
 struct rpc_auth* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct rpc_auth*) ;
 int pseudoflavor_to_flavor (int ) ;
 struct rpc_authops* rpcauth_get_authops (int ) ;
 int rpcauth_put_authops (struct rpc_authops const*) ;
 int rpcauth_release (struct rpc_auth*) ;
 struct rpc_auth* stub1 (struct rpc_auth_create_args const*,struct rpc_clnt*) ;

struct rpc_auth *
rpcauth_create(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
 struct rpc_auth *auth = ERR_PTR(-EINVAL);
 const struct rpc_authops *ops;
 u32 flavor = pseudoflavor_to_flavor(args->pseudoflavor);

 ops = rpcauth_get_authops(flavor);
 if (ops == ((void*)0))
  goto out;

 auth = ops->create(args, clnt);

 rpcauth_put_authops(ops);
 if (IS_ERR(auth))
  return auth;
 if (clnt->cl_auth)
  rpcauth_release(clnt->cl_auth);
 clnt->cl_auth = auth;

out:
 return auth;
}
