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
struct rfcomm_session {int /*<<< orphan*/  state; } ;
struct rfcomm_dlc {int state; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  (* state_change ) (struct rfcomm_dlc*,int) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  dlci; struct rfcomm_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_BOUND ; 
 int BT_CLOSED ; 
#define  BT_CONFIG 132 
#define  BT_CONNECT 131 
#define  BT_CONNECT2 130 
#define  BT_CONNECTED 129 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int,int /*<<< orphan*/ ,int,struct rfcomm_session*) ; 
#define  BT_OPEN 128 
 int /*<<< orphan*/  RFCOMM_AUTH_REJECT ; 
 int /*<<< orphan*/  RFCOMM_DEFER_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_dlc*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct rfcomm_dlc *d, int err)
{
	struct rfcomm_session *s = d->session;
	if (!s)
		return 0;

	FUNC0("dlc %p state %ld dlci %d err %d session %p",
			d, d->state, d->dlci, err, s);

	switch (d->state) {
	case BT_CONNECT:
	case BT_CONFIG:
	case BT_OPEN:
	case BT_CONNECT2:
		if (FUNC10(RFCOMM_DEFER_SETUP, &d->flags)) {
			FUNC7(RFCOMM_AUTH_REJECT, &d->flags);
			FUNC6();
			return 0;
		}
	}

	switch (d->state) {
	case BT_CONNECT:
	case BT_CONNECTED:
		FUNC1(d);
		break;

	case BT_CONFIG:
		if (s->state != BT_BOUND) {
			FUNC1(d);
			break;
		}
		/* if closing a dlc in a session that hasn't been started,
		 * just close and unlink the dlc
		 */
		/* fall through */

	default:
		FUNC2(d);

		FUNC3(d);
		d->state = BT_CLOSED;
		d->state_change(d, err);
		FUNC5(d);

		FUNC8(&d->tx_queue);
		FUNC4(d);
	}

	return 0;
}