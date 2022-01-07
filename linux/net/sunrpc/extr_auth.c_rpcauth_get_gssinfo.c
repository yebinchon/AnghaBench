
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcsec_gss_info {int dummy; } ;
struct rpc_authops {int (* flavor2info ) (int ,struct rpcsec_gss_info*) ;} ;
typedef int rpc_authflavor_t ;


 int ENOENT ;
 int pseudoflavor_to_flavor (int ) ;
 struct rpc_authops* rpcauth_get_authops (int ) ;
 int rpcauth_put_authops (struct rpc_authops const*) ;
 int stub1 (int ,struct rpcsec_gss_info*) ;

int
rpcauth_get_gssinfo(rpc_authflavor_t pseudoflavor, struct rpcsec_gss_info *info)
{
 rpc_authflavor_t flavor = pseudoflavor_to_flavor(pseudoflavor);
 const struct rpc_authops *ops;
 int result;

 ops = rpcauth_get_authops(flavor);
 if (ops == ((void*)0))
  return -ENOENT;

 result = -ENOENT;
 if (ops->flavor2info != ((void*)0))
  result = ops->flavor2info(pseudoflavor, info);

 rpcauth_put_authops(ops);
 return result;
}
