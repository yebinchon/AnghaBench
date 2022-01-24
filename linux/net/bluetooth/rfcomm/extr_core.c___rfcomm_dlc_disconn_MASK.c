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
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int /*<<< orphan*/  dlci; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  state; struct rfcomm_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_DISCONN ; 
 int RFCOMM_DISC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rfcomm_dlc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rfcomm_dlc *d)
{
	struct rfcomm_session *s = d->session;

	d->state = BT_DISCONN;
	if (FUNC3(&d->tx_queue)) {
		FUNC2(s, d->dlci);
		FUNC0(d, RFCOMM_DISC_TIMEOUT);
	} else {
		FUNC1(d);
		FUNC0(d, RFCOMM_DISC_TIMEOUT * 2);
	}
}