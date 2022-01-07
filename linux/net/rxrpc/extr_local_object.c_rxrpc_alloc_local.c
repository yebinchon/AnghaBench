
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_net {int dummy; } ;
struct TYPE_2__ {scalar_t__ srx_service; } ;
struct rxrpc_local {int debug_id; TYPE_1__ srx; int services_lock; int lock; int client_conns_lock; int client_conns; int event_queue; int reject_queue; int defrag_sem; int processor; int link; struct rxrpc_net* rxnet; int active_users; int usage; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RB_ROOT ;
 int _leave (char*,struct rxrpc_local*) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 struct rxrpc_local* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct sockaddr_rxrpc const*,int) ;
 int rwlock_init (int *) ;
 int rxrpc_debug_id ;
 int rxrpc_local_new ;
 int rxrpc_local_processor ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int trace_rxrpc_local (int ,int ,int,int *) ;

__attribute__((used)) static struct rxrpc_local *rxrpc_alloc_local(struct rxrpc_net *rxnet,
          const struct sockaddr_rxrpc *srx)
{
 struct rxrpc_local *local;

 local = kzalloc(sizeof(struct rxrpc_local), GFP_KERNEL);
 if (local) {
  atomic_set(&local->usage, 1);
  atomic_set(&local->active_users, 1);
  local->rxnet = rxnet;
  INIT_LIST_HEAD(&local->link);
  INIT_WORK(&local->processor, rxrpc_local_processor);
  init_rwsem(&local->defrag_sem);
  skb_queue_head_init(&local->reject_queue);
  skb_queue_head_init(&local->event_queue);
  local->client_conns = RB_ROOT;
  spin_lock_init(&local->client_conns_lock);
  spin_lock_init(&local->lock);
  rwlock_init(&local->services_lock);
  local->debug_id = atomic_inc_return(&rxrpc_debug_id);
  memcpy(&local->srx, srx, sizeof(*srx));
  local->srx.srx_service = 0;
  trace_rxrpc_local(local->debug_id, rxrpc_local_new, 1, ((void*)0));
 }

 _leave(" = %p", local);
 return local;
}
