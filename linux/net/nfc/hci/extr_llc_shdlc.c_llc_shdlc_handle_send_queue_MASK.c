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
typedef  int u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct llc_shdlc {int ns; int rnr; scalar_t__ w; int t1_active; int nr; int (* xmit_to_drv ) (int /*<<< orphan*/ ,struct sk_buff*) ;int hard_fault; int t2_active; int /*<<< orphan*/  t2_timer; TYPE_1__ ack_pending_q; int /*<<< orphan*/  hdev; TYPE_2__ send_q; int /*<<< orphan*/  t1_timer; int /*<<< orphan*/  dnr; } ;

/* Variables and functions */
 int SHDLC_CONTROL_HEAD_I ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int /*<<< orphan*/  SHDLC_T2_VALUE_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct sk_buff* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct llc_shdlc *shdlc)
{
	struct sk_buff *skb;
	int r;
	unsigned long time_sent;

	if (shdlc->send_q.qlen)
		FUNC5
		    ("sendQlen=%d ns=%d dnr=%d rnr=%s w_room=%d unackQlen=%d\n",
		     shdlc->send_q.qlen, shdlc->ns, shdlc->dnr,
		     shdlc->rnr == false ? "false" : "true",
		     shdlc->w - FUNC2(shdlc->ns, shdlc->dnr),
		     shdlc->ack_pending_q.qlen);

	while (shdlc->send_q.qlen && shdlc->ack_pending_q.qlen < shdlc->w &&
	       (shdlc->rnr == false)) {

		if (shdlc->t1_active) {
			FUNC1(&shdlc->t1_timer);
			shdlc->t1_active = false;
			FUNC5("Stopped T1(send ack)\n");
		}

		skb = FUNC6(&shdlc->send_q);

		*(u8 *)FUNC7(skb, 1) = SHDLC_CONTROL_HEAD_I | (shdlc->ns << 3) |
					shdlc->nr;

		FUNC5("Sending I-Frame %d, waiting to rcv %d\n", shdlc->ns,
			 shdlc->nr);
		FUNC0("shdlc frame written", skb);

		r = shdlc->xmit_to_drv(shdlc->hdev, skb);
		if (r < 0) {
			shdlc->hard_fault = r;
			break;
		}

		shdlc->ns = (shdlc->ns + 1) % 8;

		time_sent = jiffies;
		*(unsigned long *)skb->cb = time_sent;

		FUNC8(&shdlc->ack_pending_q, skb);

		if (shdlc->t2_active == false) {
			shdlc->t2_active = true;
			FUNC3(&shdlc->t2_timer, time_sent +
				  FUNC4(SHDLC_T2_VALUE_MS));
			FUNC5("Started T2 (retransmit)\n");
		}
	}
}