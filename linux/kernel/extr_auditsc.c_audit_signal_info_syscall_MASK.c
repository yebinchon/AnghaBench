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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct audit_context {void* aux_pids; int /*<<< orphan*/  target_comm; int /*<<< orphan*/  target_sid; void* target_sessionid; void* target_uid; void* target_auid; void* target_pid; } ;
struct TYPE_2__ {void* next; int /*<<< orphan*/  type; } ;
struct audit_aux_data_pids {size_t pid_count; int /*<<< orphan*/ * target_comm; int /*<<< orphan*/ * target_sid; void** target_sessionid; void** target_uid; void** target_auid; void** target_pid; TYPE_1__ d; } ;
typedef  void* kuid_t ;

/* Variables and functions */
 size_t AUDIT_AUX_PIDS ; 
 int /*<<< orphan*/  AUDIT_OBJ_PID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 struct audit_context* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 void* FUNC3 (struct task_struct*) ; 
 void* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  audit_signals ; 
 struct audit_aux_data_pids* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct task_struct*) ; 
 void* FUNC9 (struct task_struct*) ; 

int FUNC10(struct task_struct *t)
{
	struct audit_aux_data_pids *axp;
	struct audit_context *ctx = FUNC1();
	kuid_t t_uid = FUNC9(t);

	if (!audit_signals || FUNC2())
		return 0;

	/* optimize the common case by putting first signal recipient directly
	 * in audit_context */
	if (!ctx->target_pid) {
		ctx->target_pid = FUNC8(t);
		ctx->target_auid = FUNC3(t);
		ctx->target_uid = t_uid;
		ctx->target_sessionid = FUNC4(t);
		FUNC7(t, &ctx->target_sid);
		FUNC6(ctx->target_comm, t->comm, TASK_COMM_LEN);
		return 0;
	}

	axp = (void *)ctx->aux_pids;
	if (!axp || axp->pid_count == AUDIT_AUX_PIDS) {
		axp = FUNC5(sizeof(*axp), GFP_ATOMIC);
		if (!axp)
			return -ENOMEM;

		axp->d.type = AUDIT_OBJ_PID;
		axp->d.next = ctx->aux_pids;
		ctx->aux_pids = (void *)axp;
	}
	FUNC0(axp->pid_count >= AUDIT_AUX_PIDS);

	axp->target_pid[axp->pid_count] = FUNC8(t);
	axp->target_auid[axp->pid_count] = FUNC3(t);
	axp->target_uid[axp->pid_count] = t_uid;
	axp->target_sessionid[axp->pid_count] = FUNC4(t);
	FUNC7(t, &axp->target_sid[axp->pid_count]);
	FUNC6(axp->target_comm[axp->pid_count], t->comm, TASK_COMM_LEN);
	axp->pid_count++;

	return 0;
}