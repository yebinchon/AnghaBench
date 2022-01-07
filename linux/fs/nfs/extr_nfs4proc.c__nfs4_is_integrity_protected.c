
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_client {TYPE_2__* cl_rpcclient; } ;
typedef scalar_t__ rpc_authflavor_t ;
struct TYPE_4__ {TYPE_1__* cl_auth; } ;
struct TYPE_3__ {scalar_t__ au_flavor; } ;


 scalar_t__ RPC_AUTH_GSS_KRB5I ;
 scalar_t__ RPC_AUTH_GSS_KRB5P ;

__attribute__((used)) static bool _nfs4_is_integrity_protected(struct nfs_client *clp)
{
 rpc_authflavor_t flavor = clp->cl_rpcclient->cl_auth->au_flavor;
 return (flavor == RPC_AUTH_GSS_KRB5I) || (flavor == RPC_AUTH_GSS_KRB5P);
}
