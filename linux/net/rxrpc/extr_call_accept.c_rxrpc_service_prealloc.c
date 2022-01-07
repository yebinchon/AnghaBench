
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {scalar_t__ discard_new_call; struct rxrpc_backlog* backlog; } ;
struct rxrpc_backlog {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int atomic_inc_return (int *) ;
 struct rxrpc_backlog* kzalloc (int,int ) ;
 int rxrpc_debug_id ;
 scalar_t__ rxrpc_service_prealloc_one (struct rxrpc_sock*,struct rxrpc_backlog*,int *,int *,int ,int ,int ) ;

int rxrpc_service_prealloc(struct rxrpc_sock *rx, gfp_t gfp)
{
 struct rxrpc_backlog *b = rx->backlog;

 if (!b) {
  b = kzalloc(sizeof(struct rxrpc_backlog), gfp);
  if (!b)
   return -ENOMEM;
  rx->backlog = b;
 }

 if (rx->discard_new_call)
  return 0;

 while (rxrpc_service_prealloc_one(rx, b, ((void*)0), ((void*)0), 0, gfp,
       atomic_inc_return(&rxrpc_debug_id)) == 0)
  ;

 return 0;
}
