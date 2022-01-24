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
typedef  int /*<<< orphan*/  u8 ;
struct rfcomm_session {scalar_t__ cfc; scalar_t__ state; int /*<<< orphan*/  mtu; int /*<<< orphan*/  initiator; } ;
struct rfcomm_dlc {scalar_t__ state; int priority; int out; scalar_t__ cfc; int /*<<< orphan*/  flags; int /*<<< orphan*/  mtu; int /*<<< orphan*/  addr; int /*<<< orphan*/  dlci; int /*<<< orphan*/  sec_level; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_OPEN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RFCOMM_AUTH_PENDING ; 
 scalar_t__ RFCOMM_CFC_UNKNOWN ; 
 int /*<<< orphan*/  RFCOMM_CONN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_session*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 scalar_t__ FUNC7 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rfcomm_session*,int,struct rfcomm_dlc*) ; 
 struct rfcomm_session* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 struct rfcomm_session* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct rfcomm_dlc *d, bdaddr_t *src, bdaddr_t *dst, u8 channel)
{
	struct rfcomm_session *s;
	int err = 0;
	u8 dlci;

	FUNC0("dlc %p state %ld %pMR -> %pMR channel %d",
	       d, d->state, src, dst, channel);

	if (FUNC4(channel))
		return -EINVAL;

	if (d->state != BT_OPEN && d->state != BT_CLOSED)
		return 0;

	s = FUNC12(src, dst);
	if (!s) {
		s = FUNC11(src, dst, d->sec_level, &err);
		if (!s)
			return err;
	}

	dlci = FUNC2(FUNC3(s), channel);

	/* Check if DLCI already exists */
	if (FUNC7(s, dlci))
		return -EBUSY;

	FUNC6(d);

	d->dlci     = dlci;
	d->addr     = FUNC1(s->initiator, dlci);
	d->priority = 7;

	d->state = BT_CONFIG;
	FUNC8(s, d);

	d->out = 1;

	d->mtu = s->mtu;
	d->cfc = (s->cfc == RFCOMM_CFC_UNKNOWN) ? 0 : s->cfc;

	if (s->state == BT_CONNECTED) {
		if (FUNC5(d))
			FUNC10(s, 1, d);
		else
			FUNC13(RFCOMM_AUTH_PENDING, &d->flags);
	}

	FUNC9(d, RFCOMM_CONN_TIMEOUT);

	return 0;
}