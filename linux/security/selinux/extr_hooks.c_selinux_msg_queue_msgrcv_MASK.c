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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct msg_security_struct {int /*<<< orphan*/  sid; } ;
struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int /*<<< orphan*/  key; } ;
struct ipc_security_struct {int /*<<< orphan*/  sid; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipc_id; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_AUDIT_DATA_IPC ; 
 int /*<<< orphan*/  MSGQ__READ ; 
 int /*<<< orphan*/  MSG__RECEIVE ; 
 int /*<<< orphan*/  SECCLASS_MSG ; 
 int /*<<< orphan*/  SECCLASS_MSGQ ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 struct ipc_security_struct* FUNC1 (struct kern_ipc_perm*) ; 
 struct msg_security_struct* FUNC2 (struct msg_msg*) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct kern_ipc_perm *msq, struct msg_msg *msg,
				    struct task_struct *target,
				    long type, int mode)
{
	struct ipc_security_struct *isec;
	struct msg_security_struct *msec;
	struct common_audit_data ad;
	u32 sid = FUNC3(target);
	int rc;

	isec = FUNC1(msq);
	msec = FUNC2(msg);

	ad.type = LSM_AUDIT_DATA_IPC;
	ad.u.ipc_id = msq->key;

	rc = FUNC0(&selinux_state,
			  sid, isec->sid,
			  SECCLASS_MSGQ, MSGQ__READ, &ad);
	if (!rc)
		rc = FUNC0(&selinux_state,
				  sid, msec->sid,
				  SECCLASS_MSG, MSG__RECEIVE, &ad);
	return rc;
}