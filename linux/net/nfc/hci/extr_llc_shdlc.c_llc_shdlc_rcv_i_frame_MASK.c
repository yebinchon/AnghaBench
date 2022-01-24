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
struct sk_buff {scalar_t__ len; } ;
struct llc_shdlc {scalar_t__ state; int nr; int t1_active; int dnr; int /*<<< orphan*/  ns; int /*<<< orphan*/  hdev; int /*<<< orphan*/  (* rcv_to_hci ) (int /*<<< orphan*/ ,struct sk_buff*) ;int /*<<< orphan*/  w; int /*<<< orphan*/  t1_timer; } ;

/* Variables and functions */
 scalar_t__ SHDLC_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FRAME_REJ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_shdlc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct llc_shdlc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct llc_shdlc *shdlc,
				  struct sk_buff *skb, int ns, int nr)
{
	int x_ns = ns;
	int y_nr = nr;

	FUNC7("recvd I-frame %d, remote waiting frame %d\n", ns, nr);

	if (shdlc->state != SHDLC_CONNECTED)
		goto exit;

	if (x_ns != shdlc->nr) {
		FUNC3(shdlc, S_FRAME_REJ, shdlc->nr);
		goto exit;
	}

	if (shdlc->t1_active == false) {
		shdlc->t1_active = true;
		FUNC5(&shdlc->t1_timer, jiffies +
			  FUNC6(FUNC0(shdlc->w)));
		FUNC7("(re)Start T1(send ack)\n");
	}

	if (skb->len) {
		shdlc->rcv_to_hci(shdlc->hdev, skb);
		skb = NULL;
	}

	shdlc->nr = (shdlc->nr + 1) % 8;

	if (FUNC4(shdlc->dnr, y_nr, shdlc->ns)) {
		FUNC2(shdlc, y_nr);

		shdlc->dnr = y_nr;
	}

exit:
	FUNC1(skb);
}