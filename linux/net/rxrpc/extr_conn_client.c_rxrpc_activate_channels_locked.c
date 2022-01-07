
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxrpc_connection {int cache_state; int active_chans; int waiting_calls; } ;


 int RXRPC_ACTIVE_CHANS_MASK ;


 int __ffs (int) ;
 int list_empty (int *) ;
 int rxrpc_activate_one_channel (struct rxrpc_connection*,int ) ;

__attribute__((used)) static void rxrpc_activate_channels_locked(struct rxrpc_connection *conn)
{
 u8 avail, mask;

 switch (conn->cache_state) {
 case 129:
  mask = RXRPC_ACTIVE_CHANS_MASK;
  break;
 case 128:
  mask = 0x01;
  break;
 default:
  return;
 }

 while (!list_empty(&conn->waiting_calls) &&
        (avail = ~conn->active_chans,
  avail &= mask,
  avail != 0))
  rxrpc_activate_one_channel(conn, __ffs(avail));
}
