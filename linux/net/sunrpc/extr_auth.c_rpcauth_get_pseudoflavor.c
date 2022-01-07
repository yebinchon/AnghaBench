
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcsec_gss_info {int dummy; } ;
struct rpc_authops {int (* info2flavor ) (struct rpcsec_gss_info*) ;} ;
typedef int rpc_authflavor_t ;


 int RPC_AUTH_MAXFLAVOR ;
 struct rpc_authops* rpcauth_get_authops (int ) ;
 int rpcauth_put_authops (struct rpc_authops const*) ;
 int stub1 (struct rpcsec_gss_info*) ;

rpc_authflavor_t
rpcauth_get_pseudoflavor(rpc_authflavor_t flavor, struct rpcsec_gss_info *info)
{
 const struct rpc_authops *ops = rpcauth_get_authops(flavor);
 rpc_authflavor_t pseudoflavor;

 if (!ops)
  return RPC_AUTH_MAXFLAVOR;
 pseudoflavor = flavor;
 if (ops->info2flavor != ((void*)0))
  pseudoflavor = ops->info2flavor(info);

 rpcauth_put_authops(ops);
 return pseudoflavor;
}
