
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int size_align; int debug_id; int idle_timestamp; int state_lock; int * security; int rx_queue; int link; int proc_link; int processor; int timer; int waiting_calls; int channel_lock; int cache_link; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_connection*,int ) ;
 int atomic_inc_return (int *) ;
 int jiffies ;
 struct rxrpc_connection* kzalloc (int,int ) ;
 int rxrpc_connection_timer ;
 int rxrpc_debug_id ;
 int rxrpc_no_security ;
 int rxrpc_process_connection ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int *,int ) ;

struct rxrpc_connection *rxrpc_alloc_connection(gfp_t gfp)
{
 struct rxrpc_connection *conn;

 _enter("");

 conn = kzalloc(sizeof(struct rxrpc_connection), gfp);
 if (conn) {
  INIT_LIST_HEAD(&conn->cache_link);
  spin_lock_init(&conn->channel_lock);
  INIT_LIST_HEAD(&conn->waiting_calls);
  timer_setup(&conn->timer, &rxrpc_connection_timer, 0);
  INIT_WORK(&conn->processor, &rxrpc_process_connection);
  INIT_LIST_HEAD(&conn->proc_link);
  INIT_LIST_HEAD(&conn->link);
  skb_queue_head_init(&conn->rx_queue);
  conn->security = &rxrpc_no_security;
  spin_lock_init(&conn->state_lock);
  conn->debug_id = atomic_inc_return(&rxrpc_debug_id);
  conn->size_align = 4;
  conn->idle_timestamp = jiffies;
 }

 _leave(" = %p{%d}", conn, conn ? conn->debug_id : 0);
 return conn;
}
