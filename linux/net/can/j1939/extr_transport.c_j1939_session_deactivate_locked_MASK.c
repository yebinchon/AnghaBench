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
struct j1939_session {scalar_t__ state; int /*<<< orphan*/  active_session_list_entry; TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  active_session_list_lock; } ;

/* Variables and functions */
 scalar_t__ J1939_SESSION_ACTIVE ; 
 scalar_t__ J1939_SESSION_ACTIVE_MAX ; 
 scalar_t__ J1939_SESSION_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct j1939_session *session)
{
	bool active = false;

	FUNC2(&session->priv->active_session_list_lock);

	if (session->state >= J1939_SESSION_ACTIVE &&
	    session->state < J1939_SESSION_ACTIVE_MAX) {
		active = true;

		FUNC1(&session->active_session_list_entry);
		session->state = J1939_SESSION_DONE;
		FUNC0(session);
	}

	return active;
}