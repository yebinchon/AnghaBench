
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int call_lock; int to_be_accepted; int recvmsg_lock; } ;
struct rxrpc_call {int accept_link; int recvmsg_link; } ;
struct msghdr {int dummy; } ;


 int MSG_PEEK ;
 int RXRPC_NEW_CALL ;
 int SOL_RXRPC ;
 int _debug (char*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int put_cmsg (struct msghdr*,int ,int ,int ,int*) ;
 int rxrpc_call_got ;
 int rxrpc_get_call (struct rxrpc_call*,int ) ;
 int rxrpc_recvmsg_to_be_accepted ;
 int trace_rxrpc_recvmsg (struct rxrpc_call*,int ,int,int ,int ,int) ;
 int write_lock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int rxrpc_recvmsg_new_call(struct rxrpc_sock *rx,
      struct rxrpc_call *call,
      struct msghdr *msg, int flags)
{
 int tmp = 0, ret;

 ret = put_cmsg(msg, SOL_RXRPC, RXRPC_NEW_CALL, 0, &tmp);

 if (ret == 0 && !(flags & MSG_PEEK)) {
  _debug("to be accepted");
  write_lock_bh(&rx->recvmsg_lock);
  list_del_init(&call->recvmsg_link);
  write_unlock_bh(&rx->recvmsg_lock);

  rxrpc_get_call(call, rxrpc_call_got);
  write_lock(&rx->call_lock);
  list_add_tail(&call->accept_link, &rx->to_be_accepted);
  write_unlock(&rx->call_lock);
 }

 trace_rxrpc_recvmsg(call, rxrpc_recvmsg_to_be_accepted, 1, 0, 0, ret);
 return ret;
}
