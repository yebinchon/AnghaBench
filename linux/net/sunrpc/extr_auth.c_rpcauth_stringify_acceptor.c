
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {TYPE_1__* cr_ops; } ;
struct TYPE_2__ {char* (* crstringify_acceptor ) (struct rpc_cred*) ;} ;


 char* stub1 (struct rpc_cred*) ;

char *
rpcauth_stringify_acceptor(struct rpc_cred *cred)
{
 if (!cred->cr_ops->crstringify_acceptor)
  return ((void*)0);
 return cred->cr_ops->crstringify_acceptor(cred);
}
