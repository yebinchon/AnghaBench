#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_4__ {void* node; int /*<<< orphan*/  ref; } ;
struct TYPE_5__ {TYPE_1__ id; } ;
struct TYPE_6__ {TYPE_2__ addr; void* scope; void* addrtype; void* family; } ;
struct tipc_sock {int /*<<< orphan*/  portid; TYPE_3__ peer; } ;
struct socket {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 void* AF_TIPC ; 
 void* TIPC_ADDR_ID ; 
 void* TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_sock*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock1, struct socket *sock2)
{
	struct tipc_sock *tsk2 = FUNC2(sock2->sk);
	struct tipc_sock *tsk1 = FUNC2(sock1->sk);
	u32 onode = FUNC1(FUNC0(sock1->sk));

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

	FUNC3(tsk1, tsk2->portid, onode);
	FUNC3(tsk2, tsk1->portid, onode);
	return 0;
}