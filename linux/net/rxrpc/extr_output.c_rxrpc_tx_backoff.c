
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rxrpc_call {int tx_backoff; } ;


 scalar_t__ HZ ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;

__attribute__((used)) static void rxrpc_tx_backoff(struct rxrpc_call *call, int ret)
{
 if (ret < 0) {
  u16 tx_backoff = READ_ONCE(call->tx_backoff);

  if (tx_backoff < HZ)
   WRITE_ONCE(call->tx_backoff, tx_backoff + 1);
 } else {
  WRITE_ONCE(call->tx_backoff, 0);
 }
}
