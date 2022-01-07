
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tipc_sock {int portid; } ;
struct socket {struct sock* sk; } ;
struct TYPE_5__ {scalar_t__ domain; } ;
struct TYPE_4__ {int node; int ref; } ;
struct TYPE_6__ {TYPE_2__ name; TYPE_1__ id; } ;
struct sockaddr_tipc {TYPE_3__ addr; scalar_t__ scope; int family; int addrtype; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;


 int AF_TIPC ;
 int ENOTCONN ;
 int TIPC_ADDR_ID ;
 scalar_t__ TIPC_DISCONNECTING ;
 int memset (struct sockaddr_tipc*,int ,int) ;
 int sock_net (struct sock*) ;
 int tipc_own_addr (int ) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_connected (struct sock*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;

__attribute__((used)) static int tipc_getname(struct socket *sock, struct sockaddr *uaddr,
   int peer)
{
 struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 struct sock *sk = sock->sk;
 struct tipc_sock *tsk = tipc_sk(sk);

 memset(addr, 0, sizeof(*addr));
 if (peer) {
  if ((!tipc_sk_connected(sk)) &&
      ((peer != 2) || (sk->sk_state != TIPC_DISCONNECTING)))
   return -ENOTCONN;
  addr->addr.id.ref = tsk_peer_port(tsk);
  addr->addr.id.node = tsk_peer_node(tsk);
 } else {
  addr->addr.id.ref = tsk->portid;
  addr->addr.id.node = tipc_own_addr(sock_net(sk));
 }

 addr->addrtype = TIPC_ADDR_ID;
 addr->family = AF_TIPC;
 addr->scope = 0;
 addr->addr.name.domain = 0;

 return sizeof(*addr);
}
