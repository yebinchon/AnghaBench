#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  tc_index; int /*<<< orphan*/  mark; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  priority; int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *to, struct sk_buff *from)
{
	to->pkt_type = from->pkt_type;
	to->priority = from->priority;
	to->protocol = from->protocol;
	FUNC5(to);
	FUNC6(to, FUNC0(FUNC4(from)));
	to->dev = from->dev;
	to->mark = from->mark;

	FUNC2(to, from);

#ifdef CONFIG_NET_SCHED
	to->tc_index = from->tc_index;
#endif
	FUNC1(to, from);
	FUNC7(to, from);
	FUNC3(to, from);
}