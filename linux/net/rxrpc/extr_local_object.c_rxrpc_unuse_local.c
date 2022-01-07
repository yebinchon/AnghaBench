
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_local {int active_users; } ;


 unsigned int atomic_dec_return (int *) ;
 int rxrpc_put_local (struct rxrpc_local*) ;
 int rxrpc_queue_local (struct rxrpc_local*) ;

void rxrpc_unuse_local(struct rxrpc_local *local)
{
 unsigned int au;

 if (local) {
  au = atomic_dec_return(&local->active_users);
  if (au == 0)
   rxrpc_queue_local(local);
  else
   rxrpc_put_local(local);
 }
}
