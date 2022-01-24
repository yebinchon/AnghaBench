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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct audit_context {int /*<<< orphan*/  target_comm; int /*<<< orphan*/  target_sid; int /*<<< orphan*/  target_sessionid; int /*<<< orphan*/  target_uid; int /*<<< orphan*/  target_auid; int /*<<< orphan*/  target_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 struct audit_context* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

void FUNC7(struct task_struct *t)
{
	struct audit_context *context = FUNC0();

	context->target_pid = FUNC5(t);
	context->target_auid = FUNC1(t);
	context->target_uid = FUNC6(t);
	context->target_sessionid = FUNC2(t);
	FUNC4(t, &context->target_sid);
	FUNC3(context->target_comm, t->comm, TASK_COMM_LEN);
}