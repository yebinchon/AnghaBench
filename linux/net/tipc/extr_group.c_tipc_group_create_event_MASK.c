#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_member {int /*<<< orphan*/  instance; int /*<<< orphan*/  port; int /*<<< orphan*/  node; } ;
struct tipc_group {int /*<<< orphan*/  type; int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;
struct TYPE_6__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_event {TYPE_3__ s; TYPE_1__ port; int /*<<< orphan*/  found_upper; int /*<<< orphan*/  found_lower; int /*<<< orphan*/  event; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  evt ;
struct TYPE_8__ {int /*<<< orphan*/  orig_member; } ;

/* Variables and functions */
 int /*<<< orphan*/  GROUP_H_SIZE ; 
 int /*<<< orphan*/  TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_GRP_MEMBER_EVT ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tipc_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tipc_group *grp,
				    struct tipc_member *m,
				    u32 event, u16 seqno,
				    struct sk_buff_head *inputq)
{	u32 dnode = FUNC11(grp->net);
	struct tipc_event evt;
	struct sk_buff *skb;
	struct tipc_msg *hdr;

	FUNC4(&evt, 0, sizeof(evt));
	evt.event = event;
	evt.found_lower = m->instance;
	evt.found_upper = m->instance;
	evt.port.ref = m->port;
	evt.port.node = m->node;
	evt.s.seq.type = grp->type;
	evt.s.seq.lower = m->instance;
	evt.s.seq.upper = m->instance;

	skb = FUNC10(TIPC_CRITICAL_IMPORTANCE, TIPC_GRP_MEMBER_EVT,
			      GROUP_H_SIZE, sizeof(evt), dnode, m->node,
			      grp->portid, m->port, 0);
	if (!skb)
		return;

	hdr = FUNC2(skb);
	FUNC9(hdr, grp->type);
	FUNC8(hdr, event);
	FUNC6(hdr, true);
	FUNC7(hdr, seqno);
	FUNC3(FUNC5(hdr), &evt, sizeof(evt));
	FUNC0(skb)->orig_member = m->instance;
	FUNC1(inputq, skb);
}