#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_member {int /*<<< orphan*/  bc_rcv_nxt; int /*<<< orphan*/  list; int /*<<< orphan*/  state; int /*<<< orphan*/  bc_syncpt; scalar_t__ instance; } ;
struct tipc_group {scalar_t__ portid; int /*<<< orphan*/  loopback; struct net* net; } ;
struct TYPE_2__ {scalar_t__ node; scalar_t__ ref; } ;
struct tipc_event {scalar_t__ found_lower; int event; TYPE_1__ port; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRP_JOIN_MSG ; 
 int /*<<< orphan*/  MBR_JOINED ; 
 int /*<<< orphan*/  MBR_JOINING ; 
 int /*<<< orphan*/  MBR_LEAVING ; 
 int /*<<< orphan*/  MBR_PUBLISHED ; 
#define  TIPC_PUBLISHED 129 
#define  TIPC_WITHDRAWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_group*,struct tipc_member*,int const,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 struct tipc_member* FUNC3 (struct tipc_group*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_group*,struct tipc_member*) ; 
 struct tipc_member* FUNC5 (struct tipc_group*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_member*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_group*,struct tipc_member*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int FUNC8 (struct tipc_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_member*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct net*) ; 

void FUNC12(struct tipc_group *grp,
			   bool *usr_wakeup,
			   int *sk_rcvbuf,
			   struct tipc_msg *hdr,
			   struct sk_buff_head *inputq,
			   struct sk_buff_head *xmitq)
{
	struct tipc_event *evt = (void *)FUNC1(hdr);
	u32 instance = evt->found_lower;
	u32 node = evt->port.node;
	u32 port = evt->port.ref;
	int event = evt->event;
	struct tipc_member *m;
	struct net *net;
	u32 self;

	if (!grp)
		return;

	net = grp->net;
	self = FUNC11(net);
	if (!grp->loopback && node == self && port == grp->portid)
		return;

	m = FUNC5(grp, node, port);

	switch (event) {
	case TIPC_PUBLISHED:
		/* Send and wait for arrival of JOIN message if necessary */
		if (!m) {
			m = FUNC3(grp, node, port, instance,
						     MBR_PUBLISHED);
			if (!m)
				break;
			FUNC9(m, 0);
			FUNC7(grp, m, GRP_JOIN_MSG, xmitq);
			break;
		}

		if (m->state != MBR_JOINING)
			break;

		/* Member can be taken into service */
		m->instance = instance;
		m->state = MBR_JOINED;
		FUNC6(m, usr_wakeup);
		FUNC9(m, 0);
		FUNC7(grp, m, GRP_JOIN_MSG, xmitq);
		FUNC2(grp, m, TIPC_PUBLISHED,
					m->bc_syncpt, inputq);
		break;
	case TIPC_WITHDRAWN:
		if (!m)
			break;

		FUNC4(grp, m);
		m->state = MBR_LEAVING;
		FUNC0(&m->list);
		FUNC6(m, usr_wakeup);

		/* Only send event if no LEAVE message can be expected */
		if (!FUNC10(net, node))
			FUNC2(grp, m, TIPC_WITHDRAWN,
						m->bc_rcv_nxt, inputq);
		break;
	default:
		break;
	}
	*sk_rcvbuf = FUNC8(grp);
}