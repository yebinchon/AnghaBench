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
struct llc_shdlc {int dnr; int t2_active; int /*<<< orphan*/  ack_pending_q; int /*<<< orphan*/  t2_timer; int /*<<< orphan*/  ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_shdlc*) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct llc_shdlc *shdlc, int y_nr)
{
	struct sk_buff *skb;

	FUNC4("remote asks retransmission from frame %d\n", y_nr);

	if (FUNC3(shdlc->dnr, y_nr, shdlc->ns)) {
		if (shdlc->t2_active) {
			FUNC0(&shdlc->t2_timer);
			shdlc->t2_active = false;
			FUNC4("Stopped T2(retransmit)\n");
		}

		if (shdlc->dnr != y_nr) {
			while ((shdlc->dnr = ((shdlc->dnr + 1) % 8)) != y_nr) {
				skb = FUNC5(&shdlc->ack_pending_q);
				FUNC1(skb);
			}
		}

		FUNC2(shdlc);
	}
}