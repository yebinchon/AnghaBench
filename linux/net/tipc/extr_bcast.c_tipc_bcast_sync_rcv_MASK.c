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
struct tipc_msg {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;

/* Variables and functions */
 scalar_t__ STATE_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*) ; 
 TYPE_1__* FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_link*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_link*,struct tipc_msg*) ; 
 int FUNC11 (struct tipc_link*,struct tipc_msg*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct sk_buff_head*) ; 

int FUNC13(struct net *net, struct tipc_link *l,
			struct tipc_msg *hdr)
{
	struct sk_buff_head *inputq = &FUNC5(net)->inputq;
	struct sk_buff_head xmitq;
	int rc = 0;

	FUNC0(&xmitq);

	FUNC6(net);
	if (FUNC3(hdr) != STATE_MSG) {
		FUNC10(l, hdr);
	} else if (!FUNC1(hdr)) {
		FUNC9(l, FUNC2(hdr), &xmitq);
		rc = FUNC11(l, hdr, &xmitq);
	}
	FUNC7(net);

	FUNC8(net, &xmitq);

	/* Any socket wakeup messages ? */
	if (!FUNC4(inputq))
		FUNC12(net, inputq);
	return rc;
}