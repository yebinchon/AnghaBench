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
struct llc_shdlc {int /*<<< orphan*/  dnr; int /*<<< orphan*/  ns; int /*<<< orphan*/  send_q; int /*<<< orphan*/  ack_pending_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct llc_shdlc *shdlc)
{
	struct sk_buff *skb;

	FUNC0("ns reset to %d\n", shdlc->dnr);

	while ((skb = FUNC1(&shdlc->ack_pending_q))) {
		FUNC2(skb, 1);	/* remove control field */
		FUNC3(&shdlc->send_q, skb);
	}
	shdlc->ns = shdlc->dnr;
}