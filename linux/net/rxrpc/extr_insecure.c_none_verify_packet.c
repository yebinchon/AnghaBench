
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rxrpc_call {int dummy; } ;
typedef int rxrpc_seq_t ;



__attribute__((used)) static int none_verify_packet(struct rxrpc_call *call, struct sk_buff *skb,
         unsigned int offset, unsigned int len,
         rxrpc_seq_t seq, u16 expected_cksum)
{
 return 0;
}
