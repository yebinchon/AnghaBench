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
struct sk_buff {scalar_t__ cb; } ;
struct llc_shdlc {int dnr; int t2_active; int /*<<< orphan*/  t2_timer; int /*<<< orphan*/  ack_pending_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHDLC_T2_VALUE_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct llc_shdlc *shdlc, int y_nr)
{
	struct sk_buff *skb;
	int dnr = shdlc->dnr;	/* MUST initially be < y_nr */

	FUNC4("release ack pending up to frame %d excluded\n", y_nr);

	while (dnr != y_nr) {
		FUNC4("release ack pending frame %d\n", dnr);

		skb = FUNC5(&shdlc->ack_pending_q);
		FUNC1(skb);

		dnr = (dnr + 1) % 8;
	}

	if (FUNC7(&shdlc->ack_pending_q)) {
		if (shdlc->t2_active) {
			FUNC0(&shdlc->t2_timer);
			shdlc->t2_active = false;

			FUNC4
			    ("All sent frames acked. Stopped T2(retransmit)\n");
		}
	} else {
		skb = FUNC6(&shdlc->ack_pending_q);

		FUNC2(&shdlc->t2_timer, *(unsigned long *)skb->cb +
			  FUNC3(SHDLC_T2_VALUE_MS));
		shdlc->t2_active = true;

		FUNC4
		    ("Start T2(retransmit) for remaining unacked sent frames\n");
	}
}