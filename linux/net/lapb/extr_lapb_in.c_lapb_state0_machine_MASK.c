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
struct lapb_cb {int mode; int condition; int /*<<< orphan*/  dev; int /*<<< orphan*/  va; int /*<<< orphan*/  vr; int /*<<< orphan*/  vs; int /*<<< orphan*/  n2count; void* state; } ;

/* Variables and functions */
#define  LAPB_DISC 130 
 int /*<<< orphan*/  LAPB_DM ; 
 int LAPB_EXTENDED ; 
 int /*<<< orphan*/  LAPB_OK ; 
 int /*<<< orphan*/  LAPB_RESPONSE ; 
#define  LAPB_SABM 129 
#define  LAPB_SABME 128 
 void* LAPB_STATE_3 ; 
 int /*<<< orphan*/  LAPB_UA ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*) ; 

__attribute__((used)) static void FUNC6(struct lapb_cb *lapb, struct sk_buff *skb,
				struct lapb_frame *frame)
{
	switch (frame->type) {
	case LAPB_SABM:
		FUNC2(1, "(%p) S0 RX SABM(%d)\n", lapb->dev, frame->pf);
		if (lapb->mode & LAPB_EXTENDED) {
			FUNC2(1, "(%p) S0 TX DM(%d)\n",
				 lapb->dev, frame->pf);
			FUNC3(lapb, LAPB_DM, frame->pf,
					  LAPB_RESPONSE);
		} else {
			FUNC2(1, "(%p) S0 TX UA(%d)\n",
				 lapb->dev, frame->pf);
			FUNC2(0, "(%p) S0 -> S3\n", lapb->dev);
			FUNC3(lapb, LAPB_UA, frame->pf,
					  LAPB_RESPONSE);
			FUNC4(lapb);
			FUNC5(lapb);
			lapb->state     = LAPB_STATE_3;
			lapb->condition = 0x00;
			lapb->n2count   = 0;
			lapb->vs        = 0;
			lapb->vr        = 0;
			lapb->va        = 0;
			FUNC1(lapb, LAPB_OK);
		}
		break;

	case LAPB_SABME:
		FUNC2(1, "(%p) S0 RX SABME(%d)\n", lapb->dev, frame->pf);
		if (lapb->mode & LAPB_EXTENDED) {
			FUNC2(1, "(%p) S0 TX UA(%d)\n",
				 lapb->dev, frame->pf);
			FUNC2(0, "(%p) S0 -> S3\n", lapb->dev);
			FUNC3(lapb, LAPB_UA, frame->pf,
					  LAPB_RESPONSE);
			FUNC4(lapb);
			FUNC5(lapb);
			lapb->state     = LAPB_STATE_3;
			lapb->condition = 0x00;
			lapb->n2count   = 0;
			lapb->vs        = 0;
			lapb->vr        = 0;
			lapb->va        = 0;
			FUNC1(lapb, LAPB_OK);
		} else {
			FUNC2(1, "(%p) S0 TX DM(%d)\n",
				 lapb->dev, frame->pf);
			FUNC3(lapb, LAPB_DM, frame->pf,
					  LAPB_RESPONSE);
		}
		break;

	case LAPB_DISC:
		FUNC2(1, "(%p) S0 RX DISC(%d)\n", lapb->dev, frame->pf);
		FUNC2(1, "(%p) S0 TX UA(%d)\n", lapb->dev, frame->pf);
		FUNC3(lapb, LAPB_UA, frame->pf, LAPB_RESPONSE);
		break;

	default:
		break;
	}

	FUNC0(skb);
}