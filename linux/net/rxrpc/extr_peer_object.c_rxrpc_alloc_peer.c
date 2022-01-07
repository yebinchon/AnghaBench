
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_peer {int cong_cwnd; int debug_id; int rtt_input_lock; int lock; int service_conn_lock; int service_conns; int error_targets; int local; int usage; } ;
struct rxrpc_local {int dummy; } ;
typedef int gfp_t ;


 int INIT_HLIST_HEAD (int *) ;
 int RB_ROOT ;
 int RXRPC_TX_SMSS ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_peer*) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 struct rxrpc_peer* kzalloc (int,int ) ;
 int rxrpc_debug_id ;
 int rxrpc_get_local (struct rxrpc_local*) ;
 int seqlock_init (int *) ;
 int spin_lock_init (int *) ;

struct rxrpc_peer *rxrpc_alloc_peer(struct rxrpc_local *local, gfp_t gfp)
{
 struct rxrpc_peer *peer;

 _enter("");

 peer = kzalloc(sizeof(struct rxrpc_peer), gfp);
 if (peer) {
  atomic_set(&peer->usage, 1);
  peer->local = rxrpc_get_local(local);
  INIT_HLIST_HEAD(&peer->error_targets);
  peer->service_conns = RB_ROOT;
  seqlock_init(&peer->service_conn_lock);
  spin_lock_init(&peer->lock);
  spin_lock_init(&peer->rtt_input_lock);
  peer->debug_id = atomic_inc_return(&rxrpc_debug_id);

  if (RXRPC_TX_SMSS > 2190)
   peer->cong_cwnd = 2;
  else if (RXRPC_TX_SMSS > 1095)
   peer->cong_cwnd = 3;
  else
   peer->cong_cwnd = 4;
 }

 _leave(" = %p", peer);
 return peer;
}
