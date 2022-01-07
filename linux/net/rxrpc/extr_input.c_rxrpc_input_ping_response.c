
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ acks_lost_ping; int flags; int ping_serial; int ping_time; } ;
typedef scalar_t__ rxrpc_serial_t ;
typedef int ktime_t ;


 scalar_t__ READ_ONCE (int ) ;
 int RXRPC_CALL_PINGING ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 int rxrpc_input_check_for_lost_ack (struct rxrpc_call*) ;
 int rxrpc_peer_add_rtt (struct rxrpc_call*,int ,scalar_t__,scalar_t__,int ,int ) ;
 int rxrpc_rtt_rx_ping_response ;
 int smp_rmb () ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_input_ping_response(struct rxrpc_call *call,
          ktime_t resp_time,
          rxrpc_serial_t orig_serial,
          rxrpc_serial_t ack_serial)
{
 rxrpc_serial_t ping_serial;
 ktime_t ping_time;

 ping_time = call->ping_time;
 smp_rmb();
 ping_serial = READ_ONCE(call->ping_serial);

 if (orig_serial == call->acks_lost_ping)
  rxrpc_input_check_for_lost_ack(call);

 if (before(orig_serial, ping_serial) ||
     !test_and_clear_bit(RXRPC_CALL_PINGING, &call->flags))
  return;
 if (after(orig_serial, ping_serial))
  return;

 rxrpc_peer_add_rtt(call, rxrpc_rtt_rx_ping_response,
      orig_serial, ack_serial, ping_time, resp_time);
}
