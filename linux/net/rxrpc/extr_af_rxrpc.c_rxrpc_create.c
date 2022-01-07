
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int state; int * ops; } ;
struct sock {int sk_destruct; scalar_t__ sk_max_ack_backlog; int sk_write_space; int sk_state; } ;
struct rxrpc_sock {int family; int sk; int srx; int call_lock; int recvmsg_lock; int recvmsg_q; int to_be_accepted; int sock_calls; int incoming_lock; int calls; } ;
struct rxrpc_net {int peer_keepalive_timer; } ;
struct net {int dummy; } ;


 int CONFIG_AF_RXRPC_IPV6 ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ENABLED (int ) ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_RXRPC ;
 int RB_ROOT ;
 int RXRPC_UNBOUND ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_RCU_FREE ;
 int SS_UNCONNECTED ;
 int _enter (char*,struct socket*,int) ;
 int _leave (char*,struct rxrpc_sock*) ;
 scalar_t__ jiffies ;
 int memset (int *,int ,int) ;
 int rwlock_init (int *) ;
 struct rxrpc_net* rxrpc_net (int ) ;
 int rxrpc_proto ;
 int rxrpc_rpc_ops ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;
 int rxrpc_sock_destructor ;
 int rxrpc_write_space ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_net (int *) ;
 int sock_set_flag (struct sock*,int ) ;
 int spin_lock_init (int *) ;
 int timer_reduce (int *,scalar_t__) ;

__attribute__((used)) static int rxrpc_create(struct net *net, struct socket *sock, int protocol,
   int kern)
{
 struct rxrpc_net *rxnet;
 struct rxrpc_sock *rx;
 struct sock *sk;

 _enter("%p,%d", sock, protocol);


 if (protocol != PF_INET &&
     IS_ENABLED(CONFIG_AF_RXRPC_IPV6) && protocol != PF_INET6)
  return -EPROTONOSUPPORT;

 if (sock->type != SOCK_DGRAM)
  return -ESOCKTNOSUPPORT;

 sock->ops = &rxrpc_rpc_ops;
 sock->state = SS_UNCONNECTED;

 sk = sk_alloc(net, PF_RXRPC, GFP_KERNEL, &rxrpc_proto, kern);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);
 sock_set_flag(sk, SOCK_RCU_FREE);
 sk->sk_state = RXRPC_UNBOUND;
 sk->sk_write_space = rxrpc_write_space;
 sk->sk_max_ack_backlog = 0;
 sk->sk_destruct = rxrpc_sock_destructor;

 rx = rxrpc_sk(sk);
 rx->family = protocol;
 rx->calls = RB_ROOT;

 spin_lock_init(&rx->incoming_lock);
 INIT_LIST_HEAD(&rx->sock_calls);
 INIT_LIST_HEAD(&rx->to_be_accepted);
 INIT_LIST_HEAD(&rx->recvmsg_q);
 rwlock_init(&rx->recvmsg_lock);
 rwlock_init(&rx->call_lock);
 memset(&rx->srx, 0, sizeof(rx->srx));

 rxnet = rxrpc_net(sock_net(&rx->sk));
 timer_reduce(&rxnet->peer_keepalive_timer, jiffies + 1);

 _leave(" = 0 [%p]", rx);
 return 0;
}
