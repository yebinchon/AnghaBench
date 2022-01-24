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
typedef  int u32 ;
struct cmtp_session {TYPE_1__* sock; int /*<<< orphan*/  terminate; int /*<<< orphan*/  transmit; } ;
struct cmtp_conndel_req {int flags; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct cmtp_session* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct cmtp_conndel_req *req)
{
	u32 valid_flags = 0;
	struct cmtp_session *session;
	int err = 0;

	FUNC0("");

	if (req->flags & ~valid_flags)
		return -EINVAL;

	FUNC3(&cmtp_session_sem);

	session = FUNC1(&req->bdaddr);
	if (session) {
		/* Flush the transmit queue */
		FUNC5(&session->transmit);

		/* Stop session thread */
		FUNC2(&session->terminate);

		/*
		 * See the comment preceding the call to wait_woken()
		 * in cmtp_session().
		 */
		FUNC7(FUNC4(session->sock->sk));
	} else
		err = -ENOENT;

	FUNC6(&cmtp_session_sem);
	return err;
}