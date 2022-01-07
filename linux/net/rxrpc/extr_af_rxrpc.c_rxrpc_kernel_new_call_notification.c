
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rxrpc_sock {int discard_new_call; int notify_new_call; } ;
typedef int rxrpc_notify_new_call_t ;
typedef int rxrpc_discard_new_call_t ;


 struct rxrpc_sock* rxrpc_sk (int ) ;

void rxrpc_kernel_new_call_notification(
 struct socket *sock,
 rxrpc_notify_new_call_t notify_new_call,
 rxrpc_discard_new_call_t discard_new_call)
{
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);

 rx->notify_new_call = notify_new_call;
 rx->discard_new_call = discard_new_call;
}
