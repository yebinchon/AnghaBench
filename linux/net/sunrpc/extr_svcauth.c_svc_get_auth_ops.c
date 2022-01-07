
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int owner; } ;
typedef size_t rpc_authflavor_t ;


 size_t RPC_AUTH_MAXFLAVOR ;
 int * authtab ;
 struct auth_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

__attribute__((used)) static struct auth_ops *
svc_get_auth_ops(rpc_authflavor_t flavor)
{
 struct auth_ops *aops;

 if (flavor >= RPC_AUTH_MAXFLAVOR)
  return ((void*)0);
 rcu_read_lock();
 aops = rcu_dereference(authtab[flavor]);
 if (aops != ((void*)0) && !try_module_get(aops->owner))
  aops = ((void*)0);
 rcu_read_unlock();
 return aops;
}
