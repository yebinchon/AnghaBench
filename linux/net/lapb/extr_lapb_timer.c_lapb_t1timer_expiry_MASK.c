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
struct timer_list {int dummy; } ;
struct lapb_cb {int state; int mode; int /*<<< orphan*/  n2count; int /*<<< orphan*/  dev; int /*<<< orphan*/  n2; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAPB_COMMAND ; 
 int LAPB_DCE ; 
 int /*<<< orphan*/  LAPB_DISC ; 
 int /*<<< orphan*/  LAPB_DM ; 
 int LAPB_EXTENDED ; 
 int /*<<< orphan*/  LAPB_POLLOFF ; 
 int /*<<< orphan*/  LAPB_POLLON ; 
 int /*<<< orphan*/  LAPB_RESPONSE ; 
 int /*<<< orphan*/  LAPB_SABM ; 
 int /*<<< orphan*/  LAPB_SABME ; 
#define  LAPB_STATE_0 132 
#define  LAPB_STATE_1 131 
#define  LAPB_STATE_2 130 
#define  LAPB_STATE_3 129 
#define  LAPB_STATE_4 128 
 int /*<<< orphan*/  LAPB_TIMEDOUT ; 
 struct lapb_cb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct lapb_cb* lapb ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC6 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC7 (struct lapb_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC9 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct lapb_cb*) ; 
 int /*<<< orphan*/  t1timer ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct lapb_cb *lapb = FUNC0(lapb, t, t1timer);

	switch (lapb->state) {

		/*
		 *	If we are a DCE, keep going DM .. DM .. DM
		 */
		case LAPB_STATE_0:
			if (lapb->mode & LAPB_DCE)
				FUNC7(lapb, LAPB_DM, LAPB_POLLOFF, LAPB_RESPONSE);
			break;

		/*
		 *	Awaiting connection state, send SABM(E), up to N2 times.
		 */
		case LAPB_STATE_1:
			if (lapb->n2count == lapb->n2) {
				FUNC1(lapb);
				lapb->state = LAPB_STATE_0;
				FUNC4(lapb, LAPB_TIMEDOUT);
				FUNC2(0, "(%p) S1 -> S0\n", lapb->dev);
				return;
			} else {
				lapb->n2count++;
				if (lapb->mode & LAPB_EXTENDED) {
					FUNC2(1, "(%p) S1 TX SABME(1)\n",
						 lapb->dev);
					FUNC7(lapb, LAPB_SABME, LAPB_POLLON, LAPB_COMMAND);
				} else {
					FUNC2(1, "(%p) S1 TX SABM(1)\n",
						 lapb->dev);
					FUNC7(lapb, LAPB_SABM, LAPB_POLLON, LAPB_COMMAND);
				}
			}
			break;

		/*
		 *	Awaiting disconnection state, send DISC, up to N2 times.
		 */
		case LAPB_STATE_2:
			if (lapb->n2count == lapb->n2) {
				FUNC1(lapb);
				lapb->state = LAPB_STATE_0;
				FUNC3(lapb, LAPB_TIMEDOUT);
				FUNC2(0, "(%p) S2 -> S0\n", lapb->dev);
				return;
			} else {
				lapb->n2count++;
				FUNC2(1, "(%p) S2 TX DISC(1)\n", lapb->dev);
				FUNC7(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
			}
			break;

		/*
		 *	Data transfer state, restransmit I frames, up to N2 times.
		 */
		case LAPB_STATE_3:
			if (lapb->n2count == lapb->n2) {
				FUNC1(lapb);
				lapb->state = LAPB_STATE_0;
				FUNC9(lapb);
				FUNC4(lapb, LAPB_TIMEDOUT);
				FUNC2(0, "(%p) S3 -> S0\n", lapb->dev);
				return;
			} else {
				lapb->n2count++;
				FUNC6(lapb);
				FUNC5(lapb);
			}
			break;

		/*
		 *	Frame reject state, restransmit FRMR frames, up to N2 times.
		 */
		case LAPB_STATE_4:
			if (lapb->n2count == lapb->n2) {
				FUNC1(lapb);
				lapb->state = LAPB_STATE_0;
				FUNC4(lapb, LAPB_TIMEDOUT);
				FUNC2(0, "(%p) S4 -> S0\n", lapb->dev);
				return;
			} else {
				lapb->n2count++;
				FUNC10(lapb);
			}
			break;
	}

	FUNC8(lapb);
}