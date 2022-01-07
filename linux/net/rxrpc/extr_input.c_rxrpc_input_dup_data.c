
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int nr_jumbo_bad; } ;
typedef int rxrpc_seq_t ;



__attribute__((used)) static void rxrpc_input_dup_data(struct rxrpc_call *call, rxrpc_seq_t seq,
     bool is_jumbo, bool *_jumbo_bad)
{

 if (is_jumbo)
  return;





 if (!*_jumbo_bad) {
  call->nr_jumbo_bad++;
  *_jumbo_bad = 1;
 }
}
