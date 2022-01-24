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
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;

/* Variables and functions */
 scalar_t__ BCAST_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*) ; 
 TYPE_1__* FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sk_buff_head*) ; 
 int FUNC10 (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_link*) ; 
 int FUNC12 (struct tipc_link*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,struct sk_buff_head*) ; 

int FUNC15(struct net *net, struct tipc_link *l, struct sk_buff *skb)
{
	struct tipc_msg *hdr = FUNC1(skb);
	struct sk_buff_head *inputq = &FUNC6(net)->inputq;
	struct sk_buff_head xmitq;
	int rc;

	FUNC0(&xmitq);

	if (FUNC3(hdr) != FUNC13(net) || !FUNC11(l)) {
		FUNC2(skb);
		return 0;
	}

	FUNC7(net);
	if (FUNC4(hdr) == BCAST_PROTOCOL)
		rc = FUNC10(l, skb, &xmitq);
	else
		rc = FUNC12(l, skb, NULL);
	FUNC8(net);

	FUNC9(net, &xmitq);

	/* Any socket wakeup messages ? */
	if (!FUNC5(inputq))
		FUNC14(net, inputq);

	return rc;
}