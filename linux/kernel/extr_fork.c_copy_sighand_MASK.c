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
struct task_struct {int /*<<< orphan*/  sighand; } ;
struct sighand_struct {int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 unsigned long CLONE_SIGHAND ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* current ; 
 struct sighand_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sighand_cachep ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned long clone_flags, struct task_struct *tsk)
{
	struct sighand_struct *sig;

	if (clone_flags & CLONE_SIGHAND) {
		FUNC3(&current->sighand->count);
		return 0;
	}
	sig = FUNC0(sighand_cachep, GFP_KERNEL);
	FUNC2(tsk->sighand, sig);
	if (!sig)
		return -ENOMEM;

	FUNC4(&sig->count, 1);
	FUNC5(&current->sighand->siglock);
	FUNC1(sig->action, current->sighand->action, sizeof(sig->action));
	FUNC6(&current->sighand->siglock);
	return 0;
}