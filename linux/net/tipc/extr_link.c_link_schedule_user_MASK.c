#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  link_congs; } ;
struct tipc_link {TYPE_1__ stats; int /*<<< orphan*/  wakeupq; int /*<<< orphan*/  addr; int /*<<< orphan*/  net; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  chain_imp; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  SOCK_WAKEUP ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct tipc_link *l, struct tipc_msg *hdr)
{
	u32 dnode = FUNC7(l->net);
	u32 dport = FUNC3(hdr);
	struct sk_buff *skb;

	/* Create and schedule wakeup pseudo message */
	skb = FUNC6(SOCK_WAKEUP, 0, INT_H_SIZE, 0,
			      dnode, l->addr, dport, 0, 0);
	if (!skb)
		return -ENOBUFS;
	FUNC4(FUNC1(skb), true);
	FUNC0(skb)->chain_imp = FUNC2(hdr);
	FUNC5(&l->wakeupq, skb);
	l->stats.link_congs++;
	FUNC8(l, TIPC_DUMP_ALL, "wakeup scheduled!");
	return -ELINKCONG;
}