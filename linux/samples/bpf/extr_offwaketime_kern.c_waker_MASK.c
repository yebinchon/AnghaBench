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
typedef  int /*<<< orphan*/  u32 ;
struct wokeby_t {int /*<<< orphan*/  ret; int /*<<< orphan*/  name; } ;
struct task_struct {int /*<<< orphan*/  pid; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  STACKID_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wokeby_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stackmap ; 
 int /*<<< orphan*/  wokeby ; 

int FUNC5(struct pt_regs *ctx)
{
	struct task_struct *p = (void *) FUNC0(ctx);
	struct wokeby_t woke;
	u32 pid;

	pid = FUNC1(p->pid);

	FUNC2(&woke.name, sizeof(woke.name));
	woke.ret = FUNC3(ctx, &stackmap, STACKID_FLAGS);

	FUNC4(&wokeby, &pid, &woke, BPF_ANY);
	return 0;
}