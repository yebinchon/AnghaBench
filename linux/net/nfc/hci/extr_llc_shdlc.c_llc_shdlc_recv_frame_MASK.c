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
struct llc_shdlc {int /*<<< orphan*/  sm_work; int /*<<< orphan*/  rcv_q; int /*<<< orphan*/  hard_fault; } ;

/* Variables and functions */
 int /*<<< orphan*/  EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct llc_shdlc *shdlc, struct sk_buff *skb)
{
	if (skb == NULL) {
		FUNC1("NULL Frame -> link is dead\n");
		shdlc->hard_fault = -EREMOTEIO;
	} else {
		FUNC0("incoming frame", skb);
		FUNC3(&shdlc->rcv_q, skb);
	}

	FUNC2(&shdlc->sm_work);
}