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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ audit_backlog_limit ; 
 int /*<<< orphan*/  audit_default ; 
 int /*<<< orphan*/  audit_hold_queue ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	/* at this point it is uncertain if we will ever send this to auditd so
	 * try to send the message via printk before we go any further */
	FUNC1(skb);

	/* can we just silently drop the message? */
	if (!audit_default) {
		FUNC2(skb);
		return;
	}

	/* if we have room, queue the message */
	if (!audit_backlog_limit ||
	    FUNC3(&audit_hold_queue) < audit_backlog_limit) {
		FUNC4(&audit_hold_queue, skb);
		return;
	}

	/* we have no other options - drop the message */
	FUNC0("kauditd hold queue overflow");
	FUNC2(skb);
}