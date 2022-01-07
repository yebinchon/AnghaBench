
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t rpc_authflavor_t ;


 size_t RPC_AUTH_MAXFLAVOR ;
 int * authtab ;
 int rcu_assign_pointer (int ,int *) ;

void
svc_auth_unregister(rpc_authflavor_t flavor)
{
 if (flavor < RPC_AUTH_MAXFLAVOR)
  rcu_assign_pointer(authtab[flavor], ((void*)0));
}
