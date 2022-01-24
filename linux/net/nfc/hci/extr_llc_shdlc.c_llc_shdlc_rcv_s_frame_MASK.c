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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct llc_shdlc {scalar_t__ state; int rnr; TYPE_1__ send_q; } ;
typedef  enum sframe_type { ____Placeholder_sframe_type } sframe_type ;

/* Variables and functions */
 scalar_t__ SHDLC_CONNECTED ; 
#define  S_FRAME_REJ 130 
#define  S_FRAME_RNR 129 
#define  S_FRAME_RR 128 
 struct sk_buff* FUNC0 (struct llc_shdlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_shdlc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_shdlc*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct llc_shdlc *shdlc,
				  enum sframe_type s_frame_type, int nr)
{
	struct sk_buff *skb;

	if (shdlc->state != SHDLC_CONNECTED)
		return;

	switch (s_frame_type) {
	case S_FRAME_RR:
		FUNC1(shdlc, nr);
		if (shdlc->rnr == true) {	/* see SHDLC 10.7.7 */
			shdlc->rnr = false;
			if (shdlc->send_q.qlen == 0) {
				skb = FUNC0(shdlc, 0);
				if (skb)
					FUNC3(&shdlc->send_q, skb);
			}
		}
		break;
	case S_FRAME_REJ:
		FUNC2(shdlc, nr);
		break;
	case S_FRAME_RNR:
		FUNC1(shdlc, nr);
		shdlc->rnr = true;
		break;
	default:
		break;
	}
}