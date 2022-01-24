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
struct TYPE_2__ {char* driver_name; int /*<<< orphan*/  cnr; int /*<<< orphan*/  proc_show; int /*<<< orphan*/  procinfo; int /*<<< orphan*/  send_message; int /*<<< orphan*/  release_appl; int /*<<< orphan*/  register_appl; int /*<<< orphan*/  reset_ctr; int /*<<< orphan*/  load_firmware; int /*<<< orphan*/  name; struct cmtp_session* driverdata; int /*<<< orphan*/  owner; } ;
struct cmtp_session {int ncontroller; int /*<<< orphan*/  num; TYPE_1__ ctrl; int /*<<< orphan*/  name; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  CAPI_FUNCTION_GET_MANUFACTURER ; 
 int /*<<< orphan*/  CAPI_FUNCTION_GET_PROFILE ; 
 int /*<<< orphan*/  CAPI_FUNCTION_GET_SERIAL_NUMBER ; 
 int /*<<< orphan*/  CAPI_FUNCTION_GET_VERSION ; 
 int /*<<< orphan*/  CAPI_REQ ; 
 int /*<<< orphan*/  CMTP_INITIAL_MSGNUM ; 
 int /*<<< orphan*/  CMTP_INTEROP_TIMEOUT ; 
 int EBUSY ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmtp_load_firmware ; 
 int /*<<< orphan*/  FUNC5 (struct cmtp_session*) ; 
 int /*<<< orphan*/  cmtp_proc_show ; 
 int /*<<< orphan*/  cmtp_procinfo ; 
 int /*<<< orphan*/  cmtp_register_appl ; 
 int /*<<< orphan*/  cmtp_release_appl ; 
 int /*<<< orphan*/  cmtp_reset_ctr ; 
 int /*<<< orphan*/  FUNC6 (struct cmtp_session*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  cmtp_send_message ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC9(struct cmtp_session *session)
{
	unsigned char buf[4];
	long ret;

	FUNC0("session %p", session);

	FUNC4(buf, 0, 0);

	FUNC6(session, CAPI_REQ, 0xffff, CMTP_INITIAL_MSGNUM,
				CAPI_FUNCTION_GET_PROFILE, buf, 4);

	ret = FUNC8(session->wait,
			session->ncontroller, CMTP_INTEROP_TIMEOUT);

	FUNC2("Found %d CAPI controller(s) on device %s", session->ncontroller, session->name);

	if (!ret)
		return -ETIMEDOUT;

	if (!session->ncontroller)
		return -ENODEV;

	if (session->ncontroller > 1)
		FUNC2("Setting up only CAPI controller 1");

	session->ctrl.owner      = THIS_MODULE;
	session->ctrl.driverdata = session;
	FUNC7(session->ctrl.name, session->name);

	session->ctrl.driver_name   = "cmtp";
	session->ctrl.load_firmware = cmtp_load_firmware;
	session->ctrl.reset_ctr     = cmtp_reset_ctr;
	session->ctrl.register_appl = cmtp_register_appl;
	session->ctrl.release_appl  = cmtp_release_appl;
	session->ctrl.send_message  = cmtp_send_message;

	session->ctrl.procinfo      = cmtp_procinfo;
	session->ctrl.proc_show     = cmtp_proc_show;

	if (FUNC3(&session->ctrl) < 0) {
		FUNC1("Can't attach new controller");
		return -EBUSY;
	}

	session->num = session->ctrl.cnr;

	FUNC0("session %p num %d", session, session->num);

	FUNC4(buf, 0, 1);

	FUNC6(session, CAPI_REQ, 0xffff, FUNC5(session),
				CAPI_FUNCTION_GET_MANUFACTURER, buf, 4);

	FUNC6(session, CAPI_REQ, 0xffff, FUNC5(session),
				CAPI_FUNCTION_GET_VERSION, buf, 4);

	FUNC6(session, CAPI_REQ, 0xffff, FUNC5(session),
				CAPI_FUNCTION_GET_SERIAL_NUMBER, buf, 4);

	FUNC6(session, CAPI_REQ, 0xffff, FUNC5(session),
				CAPI_FUNCTION_GET_PROFILE, buf, 4);

	return 0;
}