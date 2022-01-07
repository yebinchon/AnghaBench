
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {scalar_t__ active_chans; int channel_lock; int debug_id; } ;


 scalar_t__ RXRPC_ACTIVE_CHANS_MASK ;
 int _enter (char*,int ) ;
 int _leave (char*) ;
 int rxrpc_activate_channels_locked (struct rxrpc_connection*) ;
 int rxrpc_client_activate_chans ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_rxrpc_client (struct rxrpc_connection*,int,int ) ;

__attribute__((used)) static void rxrpc_activate_channels(struct rxrpc_connection *conn)
{
 _enter("%d", conn->debug_id);

 trace_rxrpc_client(conn, -1, rxrpc_client_activate_chans);

 if (conn->active_chans == RXRPC_ACTIVE_CHANS_MASK)
  return;

 spin_lock(&conn->channel_lock);
 rxrpc_activate_channels_locked(conn);
 spin_unlock(&conn->channel_lock);
 _leave("");
}
