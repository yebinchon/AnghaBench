
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int flags; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {int final_ack_at; } ;


 unsigned long LONG_MAX ;
 unsigned long READ_ONCE (int ) ;
 scalar_t__ RXRPC_CONN_FINAL_ACK_0 ;
 unsigned int RXRPC_MAXCALLS ;
 unsigned long jiffies ;
 int rxrpc_conn_retransmit_call (struct rxrpc_connection*,int *,unsigned int) ;
 int rxrpc_reduce_conn_timer (struct rxrpc_connection*,unsigned long) ;
 int smp_rmb () ;
 scalar_t__ test_and_clear_bit (scalar_t__,int *) ;
 int test_bit (scalar_t__,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void rxrpc_process_delayed_final_acks(struct rxrpc_connection *conn)
{
 unsigned long j = jiffies, next_j;
 unsigned int channel;
 bool set;

again:
 next_j = j + LONG_MAX;
 set = 0;
 for (channel = 0; channel < RXRPC_MAXCALLS; channel++) {
  struct rxrpc_channel *chan = &conn->channels[channel];
  unsigned long ack_at;

  if (!test_bit(RXRPC_CONN_FINAL_ACK_0 + channel, &conn->flags))
   continue;

  smp_rmb();
  ack_at = READ_ONCE(chan->final_ack_at);

  if (time_before(j, ack_at)) {
   if (time_before(ack_at, next_j)) {
    next_j = ack_at;
    set = 1;
   }
   continue;
  }

  if (test_and_clear_bit(RXRPC_CONN_FINAL_ACK_0 + channel,
           &conn->flags))
   rxrpc_conn_retransmit_call(conn, ((void*)0), channel);
 }

 j = jiffies;
 if (time_before_eq(next_j, j))
  goto again;
 if (set)
  rxrpc_reduce_conn_timer(conn, next_j);
}
