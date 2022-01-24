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
typedef  scalar_t__ u8 ;
struct rfcomm_session {int state; int /*<<< orphan*/  dlcs; } ;
struct rfcomm_dlc {int state; int /*<<< orphan*/  v24_sig; int /*<<< orphan*/  (* state_change ) (struct rfcomm_dlc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BT_CLOSED ; 
#define  BT_CONNECT 129 
 void* BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int,scalar_t__) ; 
#define  BT_DISCONN 128 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*) ; 
 struct rfcomm_dlc* FUNC4 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct rfcomm_session*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rfcomm_session*) ; 
 struct rfcomm_session* FUNC12 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rfcomm_session *FUNC14(struct rfcomm_session *s, u8 dlci)
{
	FUNC0("session %p state %ld dlci %d", s, s->state, dlci);

	if (dlci) {
		/* Data channel */
		struct rfcomm_dlc *d = FUNC4(s, dlci);
		if (!d) {
			FUNC9(s, dlci);
			return s;
		}

		switch (d->state) {
		case BT_CONNECT:
			FUNC3(d);

			FUNC5(d);
			d->state = BT_CONNECTED;
			d->state_change(d, 0);
			FUNC6(d);

			FUNC10(s, 1, dlci, d->v24_sig);
			break;

		case BT_DISCONN:
			d->state = BT_CLOSED;
			FUNC1(d, 0);

			if (FUNC2(&s->dlcs)) {
				s->state = BT_DISCONN;
				FUNC8(s, 0);
				FUNC11(s);
			}

			break;
		}
	} else {
		/* Control channel */
		switch (s->state) {
		case BT_CONNECT:
			s->state = BT_CONNECTED;
			FUNC7(s);
			break;

		case BT_DISCONN:
			s = FUNC12(s, ECONNRESET);
			break;
		}
	}
	return s;
}