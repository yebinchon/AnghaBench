
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
struct rxrpc_peer {int rtt_sum; size_t rtt_cursor; size_t rtt_usage; int rtt; int rtt_input_lock; scalar_t__* rtt_cache; } ;
struct rxrpc_call {struct rxrpc_peer* peer; } ;
typedef scalar_t__ s64 ;
typedef int rxrpc_serial_t ;
typedef int ktime_t ;
typedef enum rxrpc_rtt_rx_trace { ____Placeholder_rxrpc_rtt_rx_trace } rxrpc_rtt_rx_trace ;


 int RXRPC_RTT_CACHE_SIZE ;
 int do_div (int,size_t) ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_rxrpc_rtt_rx (struct rxrpc_call*,int,int ,int ,scalar_t__,size_t,int) ;

void rxrpc_peer_add_rtt(struct rxrpc_call *call, enum rxrpc_rtt_rx_trace why,
   rxrpc_serial_t send_serial, rxrpc_serial_t resp_serial,
   ktime_t send_time, ktime_t resp_time)
{
 struct rxrpc_peer *peer = call->peer;
 s64 rtt;
 u64 sum = peer->rtt_sum, avg;
 u8 cursor = peer->rtt_cursor, usage = peer->rtt_usage;

 rtt = ktime_to_ns(ktime_sub(resp_time, send_time));
 if (rtt < 0)
  return;

 spin_lock(&peer->rtt_input_lock);


 sum -= peer->rtt_cache[cursor];
 sum += rtt;
 peer->rtt_cache[cursor] = rtt;
 peer->rtt_cursor = (cursor + 1) & (RXRPC_RTT_CACHE_SIZE - 1);
 peer->rtt_sum = sum;
 if (usage < RXRPC_RTT_CACHE_SIZE) {
  usage++;
  peer->rtt_usage = usage;
 }

 spin_unlock(&peer->rtt_input_lock);


 if (usage == RXRPC_RTT_CACHE_SIZE) {
  avg = sum / RXRPC_RTT_CACHE_SIZE;
 } else {
  avg = sum;
  do_div(avg, usage);
 }


 peer->rtt = avg;
 trace_rxrpc_rtt_rx(call, why, send_serial, resp_serial, rtt,
      usage, avg);
}
