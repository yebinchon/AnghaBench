
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_local {int active_users; } ;


 unsigned int atomic_fetch_add_unless (int *,int,int ) ;
 struct rxrpc_local* rxrpc_get_local_maybe (struct rxrpc_local*) ;
 int rxrpc_put_local (struct rxrpc_local*) ;

struct rxrpc_local *rxrpc_use_local(struct rxrpc_local *local)
{
 unsigned int au;

 local = rxrpc_get_local_maybe(local);
 if (!local)
  return ((void*)0);

 au = atomic_fetch_add_unless(&local->active_users, 1, 0);
 if (au == 0) {
  rxrpc_put_local(local);
  return ((void*)0);
 }

 return local;
}
