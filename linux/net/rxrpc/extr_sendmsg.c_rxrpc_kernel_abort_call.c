
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {int dummy; } ;
struct rxrpc_call {int user_mutex; int debug_id; } ;


 int _enter (char*,int ,int ,int,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rxrpc_abort_call (char const*,struct rxrpc_call*,int ,int ,int) ;
 int rxrpc_send_abort_packet (struct rxrpc_call*) ;

bool rxrpc_kernel_abort_call(struct socket *sock, struct rxrpc_call *call,
        u32 abort_code, int error, const char *why)
{
 bool aborted;

 _enter("{%d},%d,%d,%s", call->debug_id, abort_code, error, why);

 mutex_lock(&call->user_mutex);

 aborted = rxrpc_abort_call(why, call, 0, abort_code, error);
 if (aborted)
  rxrpc_send_abort_packet(call);

 mutex_unlock(&call->user_mutex);
 return aborted;
}
