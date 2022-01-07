
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {void* node; int ref; } ;
struct TYPE_5__ {TYPE_1__ id; } ;
struct TYPE_6__ {TYPE_2__ addr; void* scope; void* addrtype; void* family; } ;
struct tipc_sock {int portid; TYPE_3__ peer; } ;
struct socket {int sk; } ;


 void* AF_TIPC ;
 void* TIPC_ADDR_ID ;
 void* TIPC_NODE_SCOPE ;
 int sock_net (int ) ;
 void* tipc_own_addr (int ) ;
 struct tipc_sock* tipc_sk (int ) ;
 int tipc_sk_finish_conn (struct tipc_sock*,int ,void*) ;

__attribute__((used)) static int tipc_socketpair(struct socket *sock1, struct socket *sock2)
{
 struct tipc_sock *tsk2 = tipc_sk(sock2->sk);
 struct tipc_sock *tsk1 = tipc_sk(sock1->sk);
 u32 onode = tipc_own_addr(sock_net(sock1->sk));

 tsk1->peer.family = AF_TIPC;
 tsk1->peer.addrtype = TIPC_ADDR_ID;
 tsk1->peer.scope = TIPC_NODE_SCOPE;
 tsk1->peer.addr.id.ref = tsk2->portid;
 tsk1->peer.addr.id.node = onode;
 tsk2->peer.family = AF_TIPC;
 tsk2->peer.addrtype = TIPC_ADDR_ID;
 tsk2->peer.scope = TIPC_NODE_SCOPE;
 tsk2->peer.addr.id.ref = tsk1->portid;
 tsk2->peer.addr.id.node = onode;

 tipc_sk_finish_conn(tsk1, tsk2->portid, onode);
 tipc_sk_finish_conn(tsk2, tsk1->portid, onode);
 return 0;
}
