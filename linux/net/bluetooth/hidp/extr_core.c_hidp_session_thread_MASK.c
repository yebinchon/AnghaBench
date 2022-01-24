#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hidp_session {int /*<<< orphan*/  user; int /*<<< orphan*/  conn; int /*<<< orphan*/  report_queue; TYPE_2__* intr_sock; int /*<<< orphan*/  state_queue; int /*<<< orphan*/  state; TYPE_1__* ctrl_sock; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctrl_wait ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct hidp_session*) ; 
 int /*<<< orphan*/  hidp_session_wake_function ; 
 int /*<<< orphan*/  FUNC9 (struct hidp_session*) ; 
 int /*<<< orphan*/  intr_wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(void *arg)
{
	struct hidp_session *session = arg;
	FUNC1(ctrl_wait, hidp_session_wake_function);
	FUNC1(intr_wait, hidp_session_wake_function);

	FUNC0("session %p", session);

	/* initialize runtime environment */
	FUNC6(session);
	FUNC2(THIS_MODULE);
	FUNC13(current, -15);
	FUNC9(session);

	FUNC3(FUNC14(session->ctrl_sock->sk), &ctrl_wait);
	FUNC3(FUNC14(session->intr_sock->sk), &intr_wait);
	/* This memory barrier is paired with wq_has_sleeper(). See
	 * sock_poll_wait() for more information why this is needed. */
	FUNC15();

	/* notify synchronous startup that we're ready */
	FUNC4(&session->state);
	FUNC16(&session->state_queue);

	/* run session */
	FUNC8(session);

	/* cleanup runtime environment */
	FUNC12(FUNC14(session->intr_sock->sk), &intr_wait);
	FUNC12(FUNC14(session->intr_sock->sk), &ctrl_wait);
	FUNC17(&session->report_queue);
	FUNC5(session);

	/*
	 * If we stopped ourself due to any internal signal, we should try to
	 * unregister our own session here to avoid having it linger until the
	 * parent l2cap_conn dies or user-space cleans it up.
	 * This does not deadlock as we don't do any synchronous shutdown.
	 * Instead, this call has the same semantics as if user-space tried to
	 * delete the session.
	 */
	FUNC10(session->conn, &session->user);
	FUNC7(session);

	FUNC11(0);
	return 0;
}