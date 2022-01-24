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
struct p9_poll_wait {int /*<<< orphan*/ * wait_addr; int /*<<< orphan*/  wait; } ;
struct p9_conn {int /*<<< orphan*/  poll_pending_link; struct p9_poll_wait* poll_wait; } ;

/* Variables and functions */
 int FUNC0 (struct p9_poll_wait*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p9_poll_lock ; 
 int /*<<< orphan*/  p9_poll_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct p9_conn *m)
{
	unsigned long flags;
	int i;

	for (i = 0; i < FUNC0(m->poll_wait); i++) {
		struct p9_poll_wait *pwait = &m->poll_wait[i];

		if (pwait->wait_addr) {
			FUNC3(pwait->wait_addr, &pwait->wait);
			pwait->wait_addr = NULL;
		}
	}

	FUNC4(&p9_poll_lock, flags);
	FUNC2(&m->poll_pending_link);
	FUNC5(&p9_poll_lock, flags);

	FUNC1(&p9_poll_work);
}