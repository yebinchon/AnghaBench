
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rxrpc_call {int dummy; } ;


 int RXRPC_ACK_PING ;
 int rxrpc_propose_ACK (struct rxrpc_call*,int ,int ,int,int,int ) ;
 int rxrpc_propose_ack_ping_for_check_life ;
 int rxrpc_send_ack_packet (struct rxrpc_call*,int,int *) ;

void rxrpc_kernel_probe_life(struct socket *sock, struct rxrpc_call *call)
{
 rxrpc_propose_ACK(call, RXRPC_ACK_PING, 0, 1, 0,
     rxrpc_propose_ack_ping_for_check_life);
 rxrpc_send_ack_packet(call, 1, ((void*)0));
}
