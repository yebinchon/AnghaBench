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
struct lapb_frame {int type; int /*<<< orphan*/  pf; } ;
struct lapb_cb {int mode; int condition; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  va; int /*<<< orphan*/  vr; int /*<<< orphan*/  vs; int /*<<< orphan*/  n2count; } ;

/* Variables and functions */
#define  LAPB_DISC 132 
#define  LAPB_DM 131 
 int LAPB_EXTENDED ; 
 int /*<<< orphan*/  LAPB_OK ; 
 int /*<<< orphan*/  LAPB_REFUSED ; 
 int /*<<< orphan*/  LAPB_RESPONSE ; 
#define  LAPB_SABM 130 
#define  LAPB_SABME 129 
 int /*<<< orphan*/  LAPB_STATE_0 ; 
 int /*<<< orphan*/  LAPB_STATE_3 ; 
#define  LAPB_UA 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC7 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC8 (struct lapb_cb*) ; 

__attribute__((used)) static void FUNC9(struct lapb_cb *lapb, struct sk_buff *skb,
				struct lapb_frame *frame)
{
	switch (frame->type) {
	case LAPB_SABM:
		FUNC3(1, "(%p) S1 RX SABM(%d)\n", lapb->dev, frame->pf);
		if (lapb->mode & LAPB_EXTENDED) {
			FUNC3(1, "(%p) S1 TX DM(%d)\n",
				 lapb->dev, frame->pf);
			FUNC5(lapb, LAPB_DM, frame->pf,
					  LAPB_RESPONSE);
		} else {
			FUNC3(1, "(%p) S1 TX UA(%d)\n",
				 lapb->dev, frame->pf);
			FUNC5(lapb, LAPB_UA, frame->pf,
					  LAPB_RESPONSE);
		}
		break;

	case LAPB_SABME:
		FUNC3(1, "(%p) S1 RX SABME(%d)\n", lapb->dev, frame->pf);
		if (lapb->mode & LAPB_EXTENDED) {
			FUNC3(1, "(%p) S1 TX UA(%d)\n",
				 lapb->dev, frame->pf);
			FUNC5(lapb, LAPB_UA, frame->pf,
					  LAPB_RESPONSE);
		} else {
			FUNC3(1, "(%p) S1 TX DM(%d)\n",
				 lapb->dev, frame->pf);
			FUNC5(lapb, LAPB_DM, frame->pf,
					  LAPB_RESPONSE);
		}
		break;

	case LAPB_DISC:
		FUNC3(1, "(%p) S1 RX DISC(%d)\n", lapb->dev, frame->pf);
		FUNC3(1, "(%p) S1 TX DM(%d)\n", lapb->dev, frame->pf);
		FUNC5(lapb, LAPB_DM, frame->pf, LAPB_RESPONSE);
		break;

	case LAPB_UA:
		FUNC3(1, "(%p) S1 RX UA(%d)\n", lapb->dev, frame->pf);
		if (frame->pf) {
			FUNC3(0, "(%p) S1 -> S3\n", lapb->dev);
			FUNC7(lapb);
			FUNC8(lapb);
			lapb->state     = LAPB_STATE_3;
			lapb->condition = 0x00;
			lapb->n2count   = 0;
			lapb->vs        = 0;
			lapb->vr        = 0;
			lapb->va        = 0;
			FUNC2(lapb, LAPB_OK);
		}
		break;

	case LAPB_DM:
		FUNC3(1, "(%p) S1 RX DM(%d)\n", lapb->dev, frame->pf);
		if (frame->pf) {
			FUNC3(0, "(%p) S1 -> S0\n", lapb->dev);
			FUNC1(lapb);
			lapb->state = LAPB_STATE_0;
			FUNC6(lapb);
			FUNC8(lapb);
			FUNC4(lapb, LAPB_REFUSED);
		}
		break;
	}

	FUNC0(skb);
}