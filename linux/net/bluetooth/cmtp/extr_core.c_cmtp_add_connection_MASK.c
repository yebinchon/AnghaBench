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
typedef  int u32 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct cmtp_session {scalar_t__ state; int flags; struct socket* sock; int /*<<< orphan*/  terminate; int /*<<< orphan*/  task; int /*<<< orphan*/  num; int /*<<< orphan*/ ** reassembly; int /*<<< orphan*/  transmit; int /*<<< orphan*/  applications; int /*<<< orphan*/  msgnum; int /*<<< orphan*/  wait; int /*<<< orphan*/  name; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  mtu; } ;
struct cmtp_connadd_req {int flags; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  imtu; int /*<<< orphan*/  omtu; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  CMTP_INITIAL_MSGNUM ; 
 int /*<<< orphan*/  CMTP_LOOPBACK ; 
 int EBADFD ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct cmtp_session* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct cmtp_session*) ; 
 int /*<<< orphan*/  cmtp_session ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct cmtp_session*,char*,int /*<<< orphan*/ ) ; 
 struct cmtp_session* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

int FUNC26(struct cmtp_connadd_req *req, struct socket *sock)
{
	u32 valid_flags = FUNC0(CMTP_LOOPBACK);
	struct cmtp_session *session, *s;
	int i, err;

	FUNC1("");

	if (!FUNC17(sock))
		return -EBADFD;

	if (req->flags & ~valid_flags)
		return -EINVAL;

	session = FUNC16(sizeof(struct cmtp_session), GFP_KERNEL);
	if (!session)
		return -ENOMEM;

	FUNC12(&cmtp_session_sem);

	s = FUNC5(&FUNC18(sock->sk)->chan->dst);
	if (s && s->state == BT_CONNECTED) {
		err = -EEXIST;
		goto failed;
	}

	FUNC10(&session->bdaddr, &FUNC18(sock->sk)->chan->dst);

	session->mtu = FUNC19(uint, FUNC18(sock->sk)->chan->omtu,
					FUNC18(sock->sk)->chan->imtu);

	FUNC1("mtu %d", session->mtu);

	FUNC23(session->name, "%pMR", &session->bdaddr);

	session->sock  = sock;
	session->state = BT_CONFIG;

	FUNC13(&session->wait);

	session->msgnum = CMTP_INITIAL_MSGNUM;

	FUNC2(&session->applications);

	FUNC22(&session->transmit);

	for (i = 0; i < 16; i++)
		session->reassembly[i] = NULL;

	session->flags = req->flags;

	FUNC6(session);

	FUNC8(THIS_MODULE);
	session->task = FUNC15(cmtp_session, session, "kcmtpd_ctr_%d",
								session->num);
	if (FUNC3(session->task)) {
		FUNC20(THIS_MODULE);
		err = FUNC4(session->task);
		goto unlink;
	}

	if (!(session->flags & FUNC0(CMTP_LOOPBACK))) {
		err = FUNC11(session);
		if (err < 0) {
			FUNC9(&session->terminate);
			FUNC25(FUNC21(session->sock->sk));
			FUNC24(&cmtp_session_sem);
			return err;
		}
	}

	FUNC24(&cmtp_session_sem);
	return 0;

unlink:
	FUNC7(session);

failed:
	FUNC24(&cmtp_session_sem);
	FUNC14(session);
	return err;
}