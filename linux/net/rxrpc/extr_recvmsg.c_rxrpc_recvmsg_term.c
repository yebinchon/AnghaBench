
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxrpc_call {int completion; int rx_pkt_len; int rx_pkt_offset; int rx_hard_ack; int state; int error; int abort_code; } ;
struct msghdr {int dummy; } ;


 int BUG () ;
 int RXRPC_ABORT ;
 int RXRPC_ACK ;





 int RXRPC_LOCAL_ERROR ;
 int RXRPC_NET_ERROR ;
 int SOL_RXRPC ;
 int pr_err (char*,int ) ;
 int put_cmsg (struct msghdr*,int ,int ,int,int *) ;
 int rxrpc_is_service_call (struct rxrpc_call*) ;
 int rxrpc_recvmsg_terminal ;
 int trace_rxrpc_recvmsg (struct rxrpc_call*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int rxrpc_recvmsg_term(struct rxrpc_call *call, struct msghdr *msg)
{
 u32 tmp = 0;
 int ret;

 switch (call->completion) {
 case 128:
  ret = 0;
  if (rxrpc_is_service_call(call))
   ret = put_cmsg(msg, SOL_RXRPC, RXRPC_ACK, 0, &tmp);
  break;
 case 129:
  tmp = call->abort_code;
  ret = put_cmsg(msg, SOL_RXRPC, RXRPC_ABORT, 4, &tmp);
  break;
 case 132:
  tmp = call->abort_code;
  ret = put_cmsg(msg, SOL_RXRPC, RXRPC_ABORT, 4, &tmp);
  break;
 case 130:
  tmp = -call->error;
  ret = put_cmsg(msg, SOL_RXRPC, RXRPC_NET_ERROR, 4, &tmp);
  break;
 case 131:
  tmp = -call->error;
  ret = put_cmsg(msg, SOL_RXRPC, RXRPC_LOCAL_ERROR, 4, &tmp);
  break;
 default:
  pr_err("Invalid terminal call state %u\n", call->state);
  BUG();
  break;
 }

 trace_rxrpc_recvmsg(call, rxrpc_recvmsg_terminal, call->rx_hard_ack,
       call->rx_pkt_offset, call->rx_pkt_len, ret);
 return ret;
}
