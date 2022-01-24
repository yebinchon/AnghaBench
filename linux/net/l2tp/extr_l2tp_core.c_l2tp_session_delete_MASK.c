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
struct l2tp_session {int /*<<< orphan*/  (* session_close ) (struct l2tp_session*) ;int /*<<< orphan*/  dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_session*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct l2tp_session *session)
{
	if (FUNC4(0, &session->dead))
		return 0;

	FUNC0(session);
	FUNC2(session);
	if (session->session_close != NULL)
		(*session->session_close)(session);

	FUNC1(session);

	return 0;
}