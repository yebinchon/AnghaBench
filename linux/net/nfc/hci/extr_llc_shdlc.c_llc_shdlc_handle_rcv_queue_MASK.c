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
typedef  int u8 ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct llc_shdlc {void* state; TYPE_1__ rcv_q; } ;
typedef  enum uframe_modifier { ____Placeholder_uframe_modifier } uframe_modifier ;
typedef  enum sframe_type { ____Placeholder_sframe_type } sframe_type ;

/* Variables and functions */
 void* SHDLC_CONNECTED ; 
#define  SHDLC_CONTROL_HEAD_I 131 
#define  SHDLC_CONTROL_HEAD_I2 130 
 int SHDLC_CONTROL_HEAD_MASK ; 
#define  SHDLC_CONTROL_HEAD_S 129 
#define  SHDLC_CONTROL_HEAD_U 128 
 int SHDLC_CONTROL_M_MASK ; 
 int SHDLC_CONTROL_NR_MASK ; 
 int SHDLC_CONTROL_NS_MASK ; 
 int SHDLC_CONTROL_TYPE_MASK ; 
 void* SHDLC_HALF_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_shdlc*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_shdlc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct llc_shdlc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct sk_buff* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct llc_shdlc *shdlc)
{
	struct sk_buff *skb;
	u8 control;
	int nr;
	int ns;
	enum sframe_type s_frame_type;
	enum uframe_modifier u_frame_modifier;

	if (shdlc->rcv_q.qlen)
		FUNC4("rcvQlen=%d\n", shdlc->rcv_q.qlen);

	while ((skb = FUNC6(&shdlc->rcv_q)) != NULL) {
		control = skb->data[0];
		FUNC7(skb, 1);
		switch (control & SHDLC_CONTROL_HEAD_MASK) {
		case SHDLC_CONTROL_HEAD_I:
		case SHDLC_CONTROL_HEAD_I2:
			if (shdlc->state == SHDLC_HALF_CONNECTED)
				shdlc->state = SHDLC_CONNECTED;

			ns = (control & SHDLC_CONTROL_NS_MASK) >> 3;
			nr = control & SHDLC_CONTROL_NR_MASK;
			FUNC1(shdlc, skb, ns, nr);
			break;
		case SHDLC_CONTROL_HEAD_S:
			if (shdlc->state == SHDLC_HALF_CONNECTED)
				shdlc->state = SHDLC_CONNECTED;

			s_frame_type = (control & SHDLC_CONTROL_TYPE_MASK) >> 3;
			nr = control & SHDLC_CONTROL_NR_MASK;
			FUNC2(shdlc, s_frame_type, nr);
			FUNC0(skb);
			break;
		case SHDLC_CONTROL_HEAD_U:
			u_frame_modifier = control & SHDLC_CONTROL_M_MASK;
			FUNC3(shdlc, skb, u_frame_modifier);
			break;
		default:
			FUNC5("UNKNOWN Control=%d\n", control);
			FUNC0(skb);
			break;
		}
	}
}