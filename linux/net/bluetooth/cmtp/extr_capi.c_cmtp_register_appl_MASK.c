#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmtp_session {int /*<<< orphan*/  wait; } ;
struct cmtp_application {scalar_t__ state; int err; int /*<<< orphan*/  msgnum; } ;
struct TYPE_4__ {int nbchannel; } ;
struct capi_ctr {TYPE_1__ profile; struct cmtp_session* driverdata; } ;
struct TYPE_5__ {int level3cnt; int datablkcnt; int datablklen; } ;
typedef  TYPE_2__ capi_register_params ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct capi_ctr*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CAPI_FUNCTION_REGISTER ; 
 int /*<<< orphan*/  CAPI_REQ ; 
 unsigned long CMTP_INTEROP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 struct cmtp_application* FUNC5 (struct cmtp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmtp_session*,struct cmtp_application*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmtp_session*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC13(struct capi_ctr *ctrl, __u16 appl, capi_register_params *rp)
{
	FUNC2(wait, current);
	struct cmtp_session *session = ctrl->driverdata;
	struct cmtp_application *application;
	unsigned long timeo = CMTP_INTEROP_TIMEOUT;
	unsigned char buf[8];
	int err = 0, nconn, want = rp->level3cnt;

	FUNC0("ctrl %p appl %d level3cnt %d datablkcnt %d datablklen %d",
		ctrl, appl, rp->level3cnt, rp->datablkcnt, rp->datablklen);

	application = FUNC5(session, appl);
	if (!application) {
		FUNC1("Can't allocate memory for new application");
		return;
	}

	if (want < 0)
		nconn = ctrl->profile.nbchannel * -want;
	else
		nconn = want;

	if (nconn == 0)
		nconn = ctrl->profile.nbchannel;

	FUNC4(buf, 0, nconn);
	FUNC4(buf, 2, rp->datablkcnt);
	FUNC4(buf, 4, rp->datablklen);

	application->state = BT_CONFIG;
	application->msgnum = FUNC7(session);

	FUNC8(session, CAPI_REQ, 0x0000, application->msgnum,
				CAPI_FUNCTION_REGISTER, buf, 6);

	FUNC3(&session->wait, &wait);
	while (1) {
		FUNC11(TASK_INTERRUPTIBLE);

		if (!timeo) {
			err = -EAGAIN;
			break;
		}

		if (application->state == BT_CLOSED) {
			err = -application->err;
			break;
		}

		if (application->state == BT_CONNECTED)
			break;

		if (FUNC12(current)) {
			err = -EINTR;
			break;
		}

		timeo = FUNC10(timeo);
	}
	FUNC11(TASK_RUNNING);
	FUNC9(&session->wait, &wait);

	if (err) {
		FUNC6(session, application);
		return;
	}
}