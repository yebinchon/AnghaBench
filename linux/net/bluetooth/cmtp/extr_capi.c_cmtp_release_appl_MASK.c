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
struct cmtp_session {int /*<<< orphan*/  wait; } ;
struct cmtp_application {scalar_t__ state; int /*<<< orphan*/  msgnum; int /*<<< orphan*/  mapping; } ;
struct capi_ctr {struct cmtp_session* driverdata; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct capi_ctr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CAPI_FUNCTION_RELEASE ; 
 int /*<<< orphan*/  CAPI_REQ ; 
 int /*<<< orphan*/  CMTP_APPLID ; 
 int /*<<< orphan*/  CMTP_INTEROP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct cmtp_session*,struct cmtp_application*) ; 
 struct cmtp_application* FUNC3 (struct cmtp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmtp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct capi_ctr *ctrl, __u16 appl)
{
	struct cmtp_session *session = ctrl->driverdata;
	struct cmtp_application *application;

	FUNC0("ctrl %p appl %d", ctrl, appl);

	application = FUNC3(session, CMTP_APPLID, appl);
	if (!application) {
		FUNC1("Can't find application");
		return;
	}

	application->msgnum = FUNC4(session);

	FUNC5(session, CAPI_REQ, application->mapping, application->msgnum,
				CAPI_FUNCTION_RELEASE, NULL, 0);

	FUNC6(session->wait,
			(application->state == BT_CLOSED), CMTP_INTEROP_TIMEOUT);

	FUNC2(session, application);
}