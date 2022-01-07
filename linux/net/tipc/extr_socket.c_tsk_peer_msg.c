
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct tipc_sock {struct sock sk; } ;
struct tipc_msg {int dummy; } ;


 scalar_t__ likely (int) ;
 scalar_t__ msg_orignode (struct tipc_msg*) ;
 scalar_t__ msg_origport (struct tipc_msg*) ;
 int sock_net (struct sock*) ;
 scalar_t__ tipc_own_addr (int ) ;
 int tipc_sk_connected (struct sock*) ;
 scalar_t__ tsk_peer_node (struct tipc_sock*) ;
 scalar_t__ tsk_peer_port (struct tipc_sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool tsk_peer_msg(struct tipc_sock *tsk, struct tipc_msg *msg)
{
 struct sock *sk = &tsk->sk;
 u32 self = tipc_own_addr(sock_net(sk));
 u32 peer_port = tsk_peer_port(tsk);
 u32 orig_node, peer_node;

 if (unlikely(!tipc_sk_connected(sk)))
  return 0;

 if (unlikely(msg_origport(msg) != peer_port))
  return 0;

 orig_node = msg_orignode(msg);
 peer_node = tsk_peer_node(tsk);

 if (likely(orig_node == peer_node))
  return 1;

 if (!orig_node && peer_node == self)
  return 1;

 if (!peer_node && orig_node == self)
  return 1;

 return 0;
}
