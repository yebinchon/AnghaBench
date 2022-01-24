#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* cred; int /*<<< orphan*/ * real_cred; int /*<<< orphan*/  pid; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cached_requested_key; } ;
struct TYPE_4__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cred*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred*) ; 

void FUNC7(struct task_struct *tsk)
{
	struct cred *cred;

	FUNC2("exit_creds(%u,%p,%p,{%d,%d})", tsk->pid, tsk->real_cred, tsk->cred,
	       FUNC1(&tsk->cred->usage),
	       FUNC5(tsk->cred));

	cred = (struct cred *) tsk->real_cred;
	tsk->real_cred = NULL;
	FUNC6(cred);
	FUNC0(cred, -1);
	FUNC4(cred);

	cred = (struct cred *) tsk->cred;
	tsk->cred = NULL;
	FUNC6(cred);
	FUNC0(cred, -1);
	FUNC4(cred);

#ifdef CONFIG_KEYS_REQUEST_CACHE
	key_put(current->cached_requested_key);
	current->cached_requested_key = NULL;
#endif
}