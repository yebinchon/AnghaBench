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
struct pppoatm_vcc {int /*<<< orphan*/  (* old_release_cb ) (struct atm_vcc*) ;int /*<<< orphan*/  wakeup_tasklet; int /*<<< orphan*/  blocked; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED ; 
 struct pppoatm_vcc* FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct atm_vcc *atmvcc)
{
	struct pppoatm_vcc *pvcc = FUNC0(atmvcc);

	/*
	 * As in pppoatm_pop(), it's safe to clear the BLOCKED bit here because
	 * the wakeup *can't* race with pppoatm_send(). They both hold the PPP
	 * channel's ->downl lock. And the potential race with *setting* it,
	 * which leads to the double-check dance in pppoatm_may_send(), doesn't
	 * exist here. In the sock_owned_by_user() case in pppoatm_send(), we
	 * set the BLOCKED bit while the socket is still locked. We know that
	 * ->release_cb() can't be called until that's done.
	 */
	if (FUNC3(BLOCKED, &pvcc->blocked))
		FUNC2(&pvcc->wakeup_tasklet);
	if (pvcc->old_release_cb)
		pvcc->old_release_cb(atmvcc);
}