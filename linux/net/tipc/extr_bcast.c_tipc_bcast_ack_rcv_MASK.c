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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 TYPE_1__* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_link*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sk_buff_head*) ; 

void FUNC10(struct net *net, struct tipc_link *l,
			struct tipc_msg *hdr)
{
	struct sk_buff_head *inputq = &FUNC4(net)->inputq;
	u16 acked = FUNC2(hdr);
	struct sk_buff_head xmitq;

	/* Ignore bc acks sent by peer before bcast synch point was received */
	if (FUNC1(hdr))
		return;

	FUNC0(&xmitq);

	FUNC5(net);
	FUNC8(l, acked, &xmitq);
	FUNC6(net);

	FUNC7(net, &xmitq);

	/* Any socket wakeup messages ? */
	if (!FUNC3(inputq))
		FUNC9(net, inputq);
}