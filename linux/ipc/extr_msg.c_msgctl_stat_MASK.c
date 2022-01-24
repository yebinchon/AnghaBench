#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct msqid64_ds {int msg_stime; int msg_rtime; int msg_ctime; int msg_stime_high; int msg_rtime_high; int msg_ctime_high; void* msg_lrpid; void* msg_lspid; int /*<<< orphan*/  msg_qbytes; int /*<<< orphan*/  msg_qnum; int /*<<< orphan*/  msg_cbytes; int /*<<< orphan*/  msg_perm; } ;
struct TYPE_8__ {int id; } ;
struct msg_queue {int q_stime; int q_rtime; int q_ctime; TYPE_1__ q_perm; int /*<<< orphan*/  q_lrpid; int /*<<< orphan*/  q_lspid; int /*<<< orphan*/  q_qbytes; int /*<<< orphan*/  q_qnum; int /*<<< orphan*/  q_cbytes; } ;
struct ipc_namespace {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EIDRM ; 
 int IPC_STAT ; 
 scalar_t__ FUNC0 (struct msg_queue*) ; 
 int MSG_STAT ; 
 int MSG_STAT_ANY ; 
 int FUNC1 (struct msg_queue*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct ipc_namespace*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct msqid64_ds*,int /*<<< orphan*/ ,int) ; 
 struct msg_queue* FUNC9 (struct ipc_namespace*,int) ; 
 struct msg_queue* FUNC10 (struct ipc_namespace*,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC15(struct ipc_namespace *ns, int msqid,
			 int cmd, struct msqid64_ds *p)
{
	struct msg_queue *msq;
	int err;

	FUNC8(p, 0, sizeof(*p));

	FUNC12();
	if (cmd == MSG_STAT || cmd == MSG_STAT_ANY) {
		msq = FUNC9(ns, msqid);
		if (FUNC0(msq)) {
			err = FUNC1(msq);
			goto out_unlock;
		}
	} else { /* IPC_STAT */
		msq = FUNC10(ns, msqid);
		if (FUNC0(msq)) {
			err = FUNC1(msq);
			goto out_unlock;
		}
	}

	/* see comment for SHM_STAT_ANY */
	if (cmd == MSG_STAT_ANY)
		FUNC2(&msq->q_perm);
	else {
		err = -EACCES;
		if (FUNC6(ns, &msq->q_perm, S_IRUGO))
			goto out_unlock;
	}

	err = FUNC14(&msq->q_perm, cmd);
	if (err)
		goto out_unlock;

	FUNC3(&msq->q_perm);

	if (!FUNC5(&msq->q_perm)) {
		FUNC4(&msq->q_perm);
		err = -EIDRM;
		goto out_unlock;
	}

	FUNC7(&msq->q_perm, &p->msg_perm);
	p->msg_stime  = msq->q_stime;
	p->msg_rtime  = msq->q_rtime;
	p->msg_ctime  = msq->q_ctime;
#ifndef CONFIG_64BIT
	p->msg_stime_high = msq->q_stime >> 32;
	p->msg_rtime_high = msq->q_rtime >> 32;
	p->msg_ctime_high = msq->q_ctime >> 32;
#endif
	p->msg_cbytes = msq->q_cbytes;
	p->msg_qnum   = msq->q_qnum;
	p->msg_qbytes = msq->q_qbytes;
	p->msg_lspid  = FUNC11(msq->q_lspid);
	p->msg_lrpid  = FUNC11(msq->q_lrpid);

	if (cmd == IPC_STAT) {
		/*
		 * As defined in SUS:
		 * Return 0 on success
		 */
		err = 0;
	} else {
		/*
		 * MSG_STAT and MSG_STAT_ANY (both Linux specific)
		 * Return the full id, including the sequence number
		 */
		err = msq->q_perm.id;
	}

	FUNC4(&msq->q_perm);
out_unlock:
	FUNC13();
	return err;
}